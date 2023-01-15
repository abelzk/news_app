import 'package:flutter/material.dart';
import 'bello_icons.dart';
import 'package:badges/badges.dart';

class Smallcards extends StatelessWidget {
  const Smallcards({Key? key}) : super(key: key);

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

    return Stack(
      children: [
        Container(
          height: 132,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                  bottom:
                      BorderSide(color: Colors.grey.withOpacity(.3), width: .5),
                  top: BorderSide(
                    color: Colors.grey.withOpacity(.3),
                    width: .5,
                  ))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 35),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'lib/icons/test4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Container(
              padding: const EdgeInsets.all(2),
              height: 38,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.transparent,
                ),
                color: Colors.transparent,
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
                      height: 30,
                      width: 30,
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
                  padding: const EdgeInsets.only(left: 8.0, top: 0),
                  child: Container(
                    height: 40,
                    width: 50,
                    color: Colors.transparent,
                    child: Text(
                      'Tikvah News',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 9 * textsize,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ]),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 295, top: 8),
          child: Text(
            'Politics',
            style: TextStyle(
              color: Colors.blueAccent,

              fontSize: 9 * textsize,
              fontFamily: "Poppins",

              fontWeight: FontWeight.w700,
              // letterSpacing: .7
            ),
          ),
        ),
        //news content below =>>
        //news content below =>>
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 15),
          child: Container(
              padding: const EdgeInsets.only(left: 95, top: 30),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8, top: 0),
                    height: 74,
                    width: 250,
                    color: Colors.transparent,
                    child: Text(
                      'ሬድፎክስ ሶሉሽንስ ግሩፕ ያስገነባው በኢትዮጵያ የመጀመሪያው የግል ዳታ ማዕከል ሥራውን የጀመረ ሲሆን ተፈላጊ ለሆነው የአይሲቲ ማዕከል ዘመኑ የደረሰበትን መሠረተ ልማት ተደራሽነትን፣ብቃትንና ቀጣይነትን ይዞ መጥቷል ተብሏል፡፡',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12 * textsize,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1.2,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 105, top: 103),
            child: Container(
                padding: const EdgeInsets.only(left: 8),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        BelloIcons.favorite,
                        color: Colors.black54,
                        size: 7 * iconsize,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(' 801',
                          style: TextStyle(
                            fontSize: 9 * textsize,
                            fontFamily: "Poppins",
                            color: Colors.black54,
                          )),
                    ),
                    const Text('•',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, left: 10),
                      child: Icon(
                        BelloIcons.rreye,
                        size: 8 * iconsize,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      ' 24k',
                      style: TextStyle(
                        fontSize: 9 * textsize,
                        fontFamily: "Poppins",
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 110,
                      ),
                      child: Icon(
                        BelloIcons.bookmarkskk,
                        size: 10 * textsize,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ))),
      ],
    );
  }
}
