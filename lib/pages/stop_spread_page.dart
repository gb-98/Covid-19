import 'package:covid_app/core/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StopSpreadPage extends StatefulWidget {
  @override
  _StopSpreadPageState createState() => _StopSpreadPageState();
}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('I cound not launch $command');
  }
}

class _StopSpreadPageState extends State<StopSpreadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Text(
          '',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.mainColor,
              AppColors.mainColor.withOpacity(.44),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      "assets/images/maska.png",
                      height: 68,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Uporabimo maske",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.black54,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                        color: AppColors.backgroundColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      "assets/images/razkuzilo.png",
                      height: 90,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Razkužujemo roke",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.black54,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                        color: AppColors.backgroundColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      "assets/images/razdalja.png",
                      height: 90,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Držimo razdaljo",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.black54,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                        color: AppColors.backgroundColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      "assets/images/delonadaljavo.png",
                      height: 90,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Delamo na daljavo",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black54,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                        color: AppColors.backgroundColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: AppColors.mainColor,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "POKLIČITE ČE RABITE POMOČ!",
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.yellow,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                              color: AppColors.backgroundColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          customLaunch('tel:+386 1 478 60 01');
                        },
                        child: Image.asset(
                          "assets/icons/call.png",
                          height: 90,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
