import 'package:covid_app/core/consts.dart';
import 'package:covid_app/pages/home_page.dart';
import 'package:covid_app/pages/stop_spread_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'credit_page.dart';
import 'package:covid_app/pages/choose_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 35,
                margin: EdgeInsets.only(
                  top: 55,
                  left: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreditPage()),
                    );
                  },
                  child: Image.asset("assets/icons/info1.png"),
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                ),
              ),
            ),
            Center(
              child: AspectRatio(
                aspectRatio: 10 / 2.3,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChoosePage()));
                    },
                    child: Image.asset("assets/icons/global.png"),
                  ),
                ),
              ),
            ),
            Container(
              height: 35,
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Center(
                child: Text(
                  'Statistika držav',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 40,
              ),
              height: MediaQuery.of(context).size.height * .06,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.mainColor,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                  ),
                ],
                color: AppColors.mainColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              width: MediaQuery.of(context).size.width * .75,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => StopSpreadPage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "KAKO USTAVITI ŠIRJENJE ?",
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 15,
                bottom: 10,
              ),
              height: MediaQuery.of(context).size.height * .06,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.mainColor,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                  ),
                ],
                color: AppColors.mainColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              width: MediaQuery.of(context).size.width * .75,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => HomePage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "VEČ O COVID-19   ",
                        style: TextStyle(
                          color: AppColors.backgroundColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Image.asset("assets/icons/virus.png"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
