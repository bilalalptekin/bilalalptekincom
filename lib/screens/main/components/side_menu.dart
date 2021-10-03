import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/formore.dart';
import 'package:flutter_svg/svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Formore().forMore(mylinkedin);
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                               Formore().forMore(mygithub);
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                               Formore().forMore(mytwitter);
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    AreaInfoText(
                      title: "Residence",
                      text: "Turkiye",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Bursa",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "22",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    Text("This site codes taked from the flutter way Youtube Channel and modified by Bilal Alptekin")
                    // TextButton(
                    //   onPressed: () {

                    //       Formore().forMore(downloadmyCV);
                    //   },
                    //   child: FittedBox(
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           "DOWNLOAD CV",
                    //           style: TextStyle(
                    //             color: Theme.of(context)
                    //                 .textTheme
                    //                 .bodyText1!
                    //                 .color,
                    //           ),
                    //         ),
                    //         SizedBox(width: defaultPadding / 2),
                    //         SvgPicture.asset("assets/icons/download.svg")
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _launchURL(String url) async => await canLaunch(url)
  //     ? await launch(url)
  //     : throw 'Could not launch $url';
}
