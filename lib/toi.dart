import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'bello_icons.dart';
import 'package:firebase_core/firebase_core.dart';

class Toi extends StatelessWidget {
  const Toi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textscale = MediaQuery.of(context).textScaleFactor;

    double textsize = textscale;
    double iconsize = textscale;
//for texts on the app

    if (textscale >= .8) {
      textsize = 1.4;
    }
    if (textscale >= .9) {
      textsize = 1.2;
    }
    if (textscale >= 1) {
      textsize = 1.15;
    }
    if (textscale >= 1.2) {
      textsize = .98;
    }
    if (textscale >= 1.15) {
      textsize = .2;
    }
    if (textscale >= 1.1) {
      textsize = 0.9;
    }
    if (textscale >= 1.5) {
      textsize = 0.76;
    }
    if (textscale >= 1.7) {
      textsize = .68;
    }
    if (textscale >= 2) {
      textsize = .55;
    }
    // if (textscale <= 1) {
    //   textsize = 1.3;
    // }
//for the icons on the app
    if (textscale >= 1) {
      iconsize = 1.2;
    }
    if (textscale >= 1.3) {
      iconsize = 1.23;
    }
    if (textscale >= 1.5) {
      iconsize = 1.3;
    }
    if (textscale >= 1.7) {
      iconsize = 1.3;
    }
    if (textscale >= 2) {
      iconsize = 1.4;
    }
    if (textscale < 1) {
      iconsize = 1.4;
    }
    return Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                  height: 330,
                  width: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.grey,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(3, 2),
                          blurRadius: 3,
                        )
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: ShaderMask(
                        shaderCallback: (rectangle) {
                          return const LinearGradient(
                            colors: [Colors.black, Colors.transparent],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ).createShader(Rect.fromLTRB(
                              1, 0, rectangle.width, rectangle.height));
                        },
                        blendMode: BlendMode.multiply,
                        child: Image.asset(
                          'lib/icons/test.jpg',
                          fit: BoxFit.cover,
                        ),
                      ))),
            ),
            Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  height: 38,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // border: Border.all(
                    //   color: Colors.transparent,
                    // ),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Row(children: [
                    Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Badge(
                        elevation: 0,
                        badgeColor: Colors.transparent,
                        position: BadgePosition.topEnd(top: -6, end: -6),
                        badgeContent: Container(
                          height: 14,
                          width: 14,
                          color: Colors.transparent,
                          child: Image.asset('lib/icons/verfiedblue.png'),
                        ),
                        child: Container(
                          height: 33,
                          width: 33,
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'lib/icons/test3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 3),
                      child: Container(
                        height: 40,
                        width: 55,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                          color: Colors.transparent,
                        ),
                        child: Text(
                          'Tikvah News',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 10 * textsize,
                              fontWeight: FontWeight.w700,
                              letterSpacing: .5,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              shadows: const [
                                Shadow(
                                  color: Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 5,
                                )
                              ]),
                        ),
                      ),
                    ),
                  ]),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 190, top: 21.6),
                child: Container(
                    // alignment: const AlignmentDirectional(1, -1),
                    color: Colors.transparent,
                    child: Icon(BelloIcons.more_vert,
                        size: 15 * iconsize,
                        color: Colors.white,
                        shadows: const [
                          Shadow(
                            color: Colors.transparent,
                            offset: Offset(1, 1),
                            blurRadius: 8,
                          )
                        ]))),
            //category below
            Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 150),
              child: Container(
                  alignment: const AlignmentDirectional(0, 1),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: const Color.fromARGB(255, 95, 95, 95)
                              .withOpacity(.2),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Politics',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10 * textsize,
                                fontWeight: FontWeight.w500,
                                shadows: const [
                                  Shadow(
                                    color: Colors.transparent,
                                    offset: Offset(1, 1),
                                    blurRadius: 10,
                                  )
                                ]),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            //news content below =>>
            Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 45),
              child: Container(
                  //blurred container =>>
                  alignment: const AlignmentDirectional(0, 1),
                  padding: const EdgeInsets.only(left: 8, bottom: 15),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        height: 100,
                        width: 205,
                        color: Colors.transparent,
                        child: Text(
                          'በቻይና ኮንስትራክሽንና ዲዛይን ኮርፖሬሽን የሚገነባው አደይ አበባ ስታዲየም ግንባታን ለማከናወን በዓም  በዓለም አቀፍ ገበያ የግንባታ ዕቃዎች በመጨመሩ የዋጋ ማስተካከያ ተጠይቋል፡፡',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0 * textsize,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1.2,
                              height: 1.2,
                              shadows: const [
                                Shadow(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(1, 1),
                                  blurRadius: 5,
                                )
                              ]),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 40),
                child: Container(
                    padding: const EdgeInsets.only(left: 8),
                    color: Colors.transparent,
                    alignment: const AlignmentDirectional(-1, 1),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(
                            BelloIcons.time_clock_2,
                            color: Colors.grey,
                            size: 10 * iconsize,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('2 hr',
                              style: TextStyle(
                                  fontSize: 12 * textsize,
                                  color: Colors.grey,
                                  shadows: const [
                                    Shadow(
                                      color: Colors.transparent,
                                      offset: Offset(1, 1),
                                      blurRadius: 8,
                                    )
                                  ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(BelloIcons.favorite,
                              color: Colors.grey,
                              size: 10 * iconsize,
                              shadows: const [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, 1),
                                  blurRadius: 12,
                                )
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('1k',
                              style: TextStyle(
                                  fontSize: 12 * textsize,
                                  color: Colors.grey,
                                  shadows: const [
                                    Shadow(
                                      color: Colors.transparent,
                                      offset: Offset(1, 1),
                                      blurRadius: 8,
                                    )
                                  ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(BelloIcons.rreye,
                              size: 10 * iconsize,
                              color: Colors.grey,
                              shadows: const [
                                Shadow(
                                  color: Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 8,
                                )
                              ]),
                        ),
                        Text(
                          '24k',
                          style: TextStyle(
                              fontSize: 12 * textsize,
                              color: Colors.grey,
                              shadows: const [
                                Shadow(
                                  color: Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 8,
                                )
                              ]),
                        )
                      ],
                    ))),
          ],
        ));
  }
}
