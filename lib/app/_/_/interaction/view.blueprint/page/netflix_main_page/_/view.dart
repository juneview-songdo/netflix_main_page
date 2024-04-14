import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../category_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({
    super.key,
    this.mainPosterImageUrl =
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wv22frLmCpXDRjKj4MWFwa4eTOK.jpg",
  });

  final String mainPosterImageUrl;

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 480,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/view/netflix_main_page/wv22frLmCpXDRjKj4MWFwa4eTOK.webp'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(1),
                            Colors.black.withOpacity(0.0),
                            Colors.black.withOpacity(0.25),
                            Colors.black.withOpacity(1),
                          ],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter),
                    ),
                  ).height(480),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/view/netflix_main_page/logo.webp",
                                    width: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  width: 25,
                                  colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.85),
                                      BlendMode.srcIn),
                                  'assets/view/netflix_main_page/chrome-cast-svgrepo-com.svg'),
                            ],
                          ).padding(right: 10),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("TV Shows",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.85))),
                          Text("Movies",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.85))),
                          Text("Categories",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.85))),
                        ],
                      ).opacity(0.8),
                    ],
                  ).padding(left: 6, right: 10, vertical: 15),
                  Column(
                    children: [
                      SizedBox(
                        height: 440,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Tense",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.85))),
                          Container(
                            height: 5,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                shape: BoxShape.circle),
                          ).paddingDirectional(horizontal: 5),
                          Text("Action Thriller",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.85))),
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white.withOpacity(0.85),
                              ).iconSize(30),
                              SizedBox(
                                height: 2,
                              ),
                              Text("My List",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.85),
                                      fontSize: 12))
                            ],
                          ).expanded(),
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color!,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                ).iconSize(14).iconColor(
                                    Theme.of(context).backgroundColor),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Play")
                                    .textColor(
                                        Theme.of(context).backgroundColor)
                                    .fontWeight(FontWeight.bold)
                              ],
                            ).padding(horizontal: 30, vertical: 8),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.white.withOpacity(0.85),
                              ).iconSize(30),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Info",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.85),
                                      fontSize: 12))
                            ],
                          ).expanded(),
                        ],
                      ).opacity(0.8),
                    ],
                  ),
                ],
              ),
              Gap(30),
              CategoryItemView(
                posterPaths: [
                  'assets/view/netflix_main_page/img_1.webp',
                  'assets/view/netflix_main_page/img_2.webp',
                  'assets/view/netflix_main_page/img_3.webp'
                ],
                width: 110,
                height: 170,
                listLabel: "Netflix's Top Picks",
              ),
              CategoryItemView(
                posterPaths: [
                  'assets/view/netflix_main_page/img_1.webp',
                  'assets/view/netflix_main_page/img_2.webp',
                  'assets/view/netflix_main_page/img_3.webp'
                ],
                width: 110,
                height: 170,
                listLabel: "Trending Now",
              ),
              CategoryItemView(
                posterPaths: [
                  'assets/view/netflix_main_page/img_1.webp',
                  'assets/view/netflix_main_page/img_2.webp',
                  'assets/view/netflix_main_page/img_3.webp'
                ],
                width: 170,
                height: 250,
                listLabel: "Only on Netflix",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
