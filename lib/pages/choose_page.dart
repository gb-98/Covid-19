import 'package:flutter/material.dart';
import 'package:covid_app/core/consts.dart';
import 'package:covid_app/pages/daily_page.dart';
import 'package:covid_app/pages/country_page.dart';
import 'package:covid_app/pages/extra_page.dart';

class ChoosePage extends StatefulWidget {
  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<ChoosePage> {
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => DailyPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 50,
                ),
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColors.mainColor,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 30.0,
                    ),
                  ],
                  color: Colors.white38,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                width: MediaQuery.of(context).size.width * .70,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "DNEVNI PODATKI",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CountryPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 50,
                ),
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColors.mainColor,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 15.0,
                    ),
                  ],
                  color: Colors.white38,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                width: MediaQuery.of(context).size.width * .70,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "OD ZAČETKA PANDEMIJE",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ExtraPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 50,
                ),
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColors.mainColor,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 15.0,
                    ),
                  ],
                  color: Colors.white38,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                width: MediaQuery.of(context).size.width * .70,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "DODATNI PODATKI",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
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
