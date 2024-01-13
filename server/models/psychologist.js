const mongoose = require("mongoose");

const psychologistSchema = mongoose.Schema({
  name: {
    required: true,
    type: String,
    trim: true,
  },
  email: {
    required: true,
    type: String,
    trim: true,
    validate: {
      validator: (value) => {
        const re =
          /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
        return value.match(re);
      },
      message: "Please enter a valid email address",
    },
  },
  password: {
    required: true,
    type: String,
  },
  address: {
    type: String,
    default: "",
  },
  type: {
    type: String,
    default: "user",
  },

  phone: {
    unique: true,
    type: String,
    validate: {
      validator: (value) => {
        // Custom function to check if the value is a valid phone number
        return /^\+?[0-9]+$/.test(value);
      },
      message: "Please enter a valid phone number",
    },
  
  },

});

const psychologist = mongoose.model("psychologist", psychologistSchema);
module.exports = psychologist;