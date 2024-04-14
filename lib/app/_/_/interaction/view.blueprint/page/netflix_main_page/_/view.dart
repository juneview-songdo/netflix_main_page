import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({
    super.key,
    this.mainPosterImageUrl =
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wv22frLmCpXDRjKj4MWFwa4eTOK.jpg",
    this.keywords = const ["심리", "긴장감 넘치는", "스릴러", "액션"],
  });

  final String mainPosterImageUrl;
  final List<String> keywords;

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
          child: Stack(
            children: [
              SizedBox(
                width: ScreenUtil().screenHeight - 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: 480,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(1),
                                  Colors.black.withOpacity(0.0),
                                  Colors.black.withOpacity(1),
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter),
                          ),
                        ),
                        SizedBox(
                          height: 480,
                          width: ScreenUtil().screenWidth,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 315,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  (widget.keywords.isNotEmpty)
                                      ? Text(
                                          widget.keywords[0],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white
                                                  .withOpacity(0.85)),
                                        )
                                      : Container(),
                                  (widget.keywords.length > 1)
                                      ? Container(
                                          height: 5,
                                          width: 13,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.9),
                                              shape: BoxShape.circle),
                                        )
                                      : Container(),
                                  (widget.keywords.length > 1)
                                      ? Text(widget.keywords[1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white
                                                  .withOpacity(0.85)))
                                      : Container(),
                                  (widget.keywords.length > 2)
                                      ? Container(
                                          height: 5,
                                          width: 13,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.9),
                                              shape: BoxShape.circle),
                                        )
                                      : Container(),
                                  (widget.keywords.length > 2)
                                      ? Text(widget.keywords[2],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white
                                                  .withOpacity(0.85)))
                                      : Container(),
                                ],
                              ),
                              Gap(5),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white.withOpacity(0.85),
                              ),
                              Gap(1),
                              Text(
                                "내가 찜한 콘텐츠",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.85),
                                    fontSize: 12),
                              )
                            ],
                          ).gestures(onTap: () {}).expanded(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 25, top: 2, bottom: 2),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.play_arrow,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "재생",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white.withOpacity(0.85),
                              ),
                              Gap(1),
                              Text(
                                "정보",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.85),
                                    fontSize: 12),
                              )
                            ],
                          ).gestures(onTap: () {}).expanded(),
                        ],
                      ),
                    ),
                    Gap(30),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     for (var poster in controller.posterList)
                    //       NetflixStyleHorizontalListViewWidget(
                    //         posterImageUrlList: [
                    //           for (var postUrl in poster['images'])
                    //             TMDBMovieApi.to.getImageUrl(postUrl),
                    //         ],
                    //         width: poster['width'],
                    //         height: poster['height'],
                    //         listTitle: poster['title'],
                    //       ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              Column(
                children: [
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                  ).height(26),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'TV프로그램',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.85)),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          '영화',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.85)),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          '카테고리',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.85)),
                        ),
                      ),
                    ],
                  ),
                ],
              )
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
