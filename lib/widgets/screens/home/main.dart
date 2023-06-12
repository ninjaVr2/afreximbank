import 'dart:math' as math;
import 'package:afreximbank/widgets/components/buttons/home.dart';
import 'package:flutter/material.dart';

class AfreximHomeScreenWidget extends StatefulWidget {
  const AfreximHomeScreenWidget({super.key});

  @override
  AfreximHomeScreenWidgetState createState() => AfreximHomeScreenWidgetState();
}

class AfreximHomeScreenWidgetState extends State<AfreximHomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    double homeCardWidth = MediaQuery.of(context).size.width > 700
        ? 628.0
        : MediaQuery.of(context).size.width - 80.0;

    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: -225,
              left: -275,
              child: Transform.rotate(
                angle: 11.622131493937369 * (math.pi / 180),
                child: Container(
                  width: 420,
                  height: 420,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/News1.png',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -225,
              right: -275,
              child: Transform.rotate(
                angle: 8.470523991478151 * (math.pi / 180),
                child: Container(
                  width: 420,
                  height: 420,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/News2.png',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 63,
              // left: (MediaQuery.of(context).size.width / 2) - 314,
              right: 0,
              left: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      child: Container(
                        width: homeCardWidth,
                        padding: const EdgeInsets.only(
                          bottom: 20.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: const [
                            BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                              offset: Offset(0, 4),
                              blurRadius: 100,
                            )
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: homeCardWidth - 101,
                              height: 74,
                              margin:
                                  const EdgeInsets.symmetric(vertical: 40.0),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color.fromRGBO(246, 246, 246, 1),
                              ),
                              child:  Center(
                                child: Text(
                                  'SELECT THE STATION FOR THIS DEVICE',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color.fromRGBO(1, 172, 140, 1),
                                    fontFamily: 'Sofia Pro',
                                    fontSize: ((homeCardWidth-10)*0.04),
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                    height: 2,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                            HomeScreenBtn(
                              title: "MAIN ENTRANCE",
                              onPressed: () {},
                            ),
                            HomeScreenBtn(
                              title: "MEETING ROOM 1",
                              onPressed: () {},
                            ),
                            HomeScreenBtn(
                              title: "MEETING ROOM 2",
                              onPressed: () {},
                            ),
                            HomeScreenBtn(
                              title: "MEETING ROOM 3",
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top: 55,
            //   left: (MediaQuery.of(context).size.width / 2) - 50,
            //   child: Stack(
            //     children: [
            //       ClipOval(
            //         child: Image.asset(
            //           'assets/images/logo.png',
            //           width: 100,
            //           height: 100,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       Container(
            //         // color: Colors.amber,
            //         decoration:
            //             BoxDecoration(borderRadius: BorderRadius.circular(50)),
            //         width: 100,
            //         height: 100,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}