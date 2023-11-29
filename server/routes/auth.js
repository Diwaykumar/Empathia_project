const express = require('express');
const User = require('../models/user');
const Psycologist = require('../models/psycologist'); // Updated to Psycologist model
const bcryptjs = require('bcryptjs');
const authRouter = express.Router();
const jwt = require('jsonwebtoken');

authRouter.post('/api/signup/:userType', async (req, res) => {
  const { name, email, password, phone } = req.body;
  const userType = req.params.userType;

  try {
    let existingUserPatient = await User.findOne({ $or: [{ email }, { phone }] });
    let existingUserPsychologist = await Psycologist.findOne({ $or: [{ email }, { phone }] });

    if (existingUserPatient || existingUserPsychologist) {
      return res.status(400).json({ msg: 'User with the same email or phone already exists' });
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let newUser;
    if (userType === 'patient') {
      newUser = new User({
        email,
        password: hashedPassword,
        name,
        phone,
      });
      await newUser.save();
    } else if (userType === 'psycologist') {
      newUser = new Psycologist({
        email,
        password: hashedPassword,
        name,
        phone,
      });
      await newUser.save();
    } else {
      return res.status(400).json({ msg: 'Invalid user type' });
    }

    res.json(newUser);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

//sign in Route
authRouter.post('/api/signin/:userType', async (req, res) => {
  try {
    const { email, password } = req.body;
    const userType = req.params.userType;

    let user;
    if (userType === 'patient') {
      user = await User.findOne({ email });
    } else if (userType === 'psycologist') {
      user = await Psycologist.findOne({ email });
    } else {
      return res.status(400).json({ msg: 'Invalid user type' });
    }

    if (!user) {
      return res.status(400).json({ msg: `User with this email does not exist as ${userType}` });
    }

    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: 'Incorrect Password.' });
    }

    const token = jwt.sign({ id: user._id }, "passwordKey");

    res.json({ token, ...user._doc });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});


module.exports = authRouter;
