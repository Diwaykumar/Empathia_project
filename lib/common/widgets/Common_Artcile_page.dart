import 'package:flutter/material.dart';
import 'common_article.dart';
import 'custom_textfield.dart';

class ArticlePage extends StatelessWidget {
  final String imagePath;
  final String title;
  final List<Widget> additionalContent;

  ArticlePage({
    Key? key,
    required this.imagePath,
    required this.title,
    this.additionalContent = const [], // Default empty list
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            height: 300,
            child: CommonArticle2(
              imagePath: imagePath,
              text: '',
              textColor: Colors.transparent,
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverLayoutBuilder(
                builder: (BuildContext context, constraints) {
                  final scrolled = constraints.scrollOffset > 0;
                  return SliverAppBar(
                    backgroundColor:
                        scrolled ? Colors.grey : Colors.transparent,
                    expandedHeight: 200.0,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            width: constraints.maxWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      background: SizedBox.expand(),
                    ),
                  );
                },
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: Image(
                                  image: AssetImage(imagePath),
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CustomText(
                                          text: "Created By",
                                          fontSize: 13,
                                          weight: FontWeight.normal,
                                          textColor: Colors.black45),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                          text: "Empathia",
                                          fontSize: 15,
                                          weight: FontWeight.w500,
                                          textColor: Colors.black),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Additional Content
                        ...additionalContent,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class common_text extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? textColor;
  const common_text(
      {super.key,
        required this.text,
         this.fontSize,
         this.weight,
         this.textColor});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        fontWeight: weight??FontWeight.w500,
        fontSize: fontSize??15,
        color: textColor ,


      ),
    );
  }
}
class common_heading extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? textColor;
  const common_heading(
      {super.key,
        required this.text,
         this.fontSize,
         this.weight,
         this.textColor});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        fontWeight: weight??FontWeight.bold,
        fontSize: fontSize??22,
        color: textColor ,


      ),
    );
  }
}
