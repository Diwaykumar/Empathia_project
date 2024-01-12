import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/common_article.dart';
import '../../../../../common/widgets/custom_textfield.dart';

class CollectionsPage extends StatefulWidget {
  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.blue[200],
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CustomText(
              text: 'Featured Artcile',
              fontSize: 16,
              weight: FontWeight.normal,
              textColor: Colors.black87,
            ),
          ),
          Container(
            height: 250,
            child: CommonArticle(
                imagePath: 'assets/article 2.jpeg',
                text: 'Financial Stress',
              textColor: Colors.white,

            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CustomText(
              text: 'Healthy Habits',
              fontSize: 16,
              weight: FontWeight.normal,
              textColor: Colors.black87,
            ),
          ),
          Container(
            height: 200, // Specify a fixed height for the GridView
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1, // Set to 1 for horizontal scrolling
              children: [

                GestureDetector(
                  onTap: () {
                    // Action for Article 1
                    print("Articles Tapped");
                    Navigator.pushNamed((context), '/homePsych');
                  },
                  child: CommonArticle(
                    imagePath: 'assets/Articles 2.jpg',
                    text: "    Learning to Sleep",
                    textColor: Colors.white,
                  ),
                ),
                CommonArticle(
                  imagePath: 'assets/Article.jpg',
                  text: "Break Up With\nYour Phone",
                  textColor: Colors.white,
                ),
                CommonArticle(
                  imagePath: 'assets/article 2.jpeg',
                  text: "Financial Stress",
                  // textColor: Colors.white,
                ),
                CommonArticle(
                  imagePath: 'assets/Article 3.jpg',
                  text: "Making\nMeditation Stick",
                  textColor: Colors.white,
                ),

              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CustomText(
              text: 'Feel Good',
              fontSize: 16,
              weight: FontWeight.normal,
              textColor: Colors.black87,
            ),
          ),
          Container(
            height: 200, // Specify a fixed height for the GridView
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1, // Set to 1 for horizontal scrolling
              children: [
                CommonArticle(
                  imagePath: 'assets/Article 5.jpg',
                  text: "Get Inspired",
                  textColor: Colors.black,

                ),
                CommonArticle(
                  imagePath: 'assets/Article 6.jpg',
                  text: "Get Chill",
                  textColor: Colors.white,
                ),
                CommonArticle(
                    imagePath: 'assets/Article 7.jpg',
                  text: "Self-Esteem\nBooster Kit", textColor: Colors.black
                ),

              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CustomText(
              text: 'Getting Through It',
              fontSize: 16,
              weight: FontWeight.normal,
              textColor: Colors.black87,
            ),
          ),
          Container(
            height: 200, // Specify a fixed height for the GridView
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1, // Set to 1 for horizontal scrolling
              children: [
                CommonArticle(
                  imagePath: 'assets/Article 8.jpg',
                  text: "Managing Social\nAnxiety",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 9.jpg',
                  text: "Panic Attack 101",
                ),
                CommonArticle(
                  imagePath: 'assets/article 10.jpg',
                  text: "Turn A Bad Day\nAround",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 19.jpeg',
                  text: "An Astronaut's\nGuide To\n Loneliness with\nScott Kelly",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 11.jpeg',
                  text: "Permisson To Grieve",
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CustomText(
              text: 'PARENTING ',
              fontSize: 16,
              weight: FontWeight.normal,
              textColor: Colors.black87,
            ),
          ),
          Container(
            height: 200, // Specify a fixed height for the GridView
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1, // Set to 1 for horizontal scrolling
              children: [
                CommonArticle(
                  imagePath: 'assets/Article 20.jpg',
                  text: "Parenting Burnout",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 21.jpg',
                  text: "Parenting SOS",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 18.jpg',
                  text: "Dealing With \nStressed Kids",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 12.jpeg',
                  text: "Building A Family\nPractice",
                ),

              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CustomText(
              text: 'HOW WE WORK',
              fontSize: 16,
              weight: FontWeight.normal,
              textColor: Colors.black87,
            ),
          ),
          Container(
            height: 200, // Specify a fixed height for the GridView
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1, // Set to 1 for horizontal scrolling
              children: [
                CommonArticle(
                  imagePath: 'assets/Article 17.jpg',
                  text: "Build Work/Life \nBalance",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 15.jpeg',
                  text: "Dealing With \nWork Stress",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 16.jpeg',
                  text: "Gaining \nConfidence at\n Work",
                ),
                CommonArticle(
                  imagePath: 'assets/Article 22.jpeg',
                  text: "Dealing With \n Burnout",

                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}

