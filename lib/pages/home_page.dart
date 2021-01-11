import 'package:covid_app/core/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(21),
                  ),
                ),
                height: 110,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 13,
                    right: 13,
                    top: 10,
                  ),
                  child: Center(
                    child: Text(
                      "COVID-19 je nalezljiva bolezen, ki jo povzroča virus SARS-CoV-2. Širi se predvsem z respiratornimi kapljicami, ki jih okužene osebe ustvarjajo ob kašlju in kihanju. ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              Container(
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/images/virusi.png"),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(21),
                  ),
                ),
                height: 110,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 13,
                    right: 13,
                  ),
                  child: Center(
                    child: Text(
                      "Povprečna inkubacijska doba (čas od okužbe do pojava simptomov) znaša 5,5 dni. V skoraj vseh primerih se simptomi izrazijo do 12. dneva.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              Container(
                height: 65,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: "Simptomi ",
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 20.0,
                              color: Colors.purple,
                              offset: Offset(3.0, 3.0),
                            ),
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        children: [
                          TextSpan(
                            text: " COVID-a",
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 25.0,
                                  color: Colors.black26,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                padding: EdgeInsets.only(
                  left: 14.0,
                  right: 14.0,
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/images/kaselj.png",
                                  height: 70),
                              Text(
                                "Kašelj",
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 20.0,
                                        color: AppColors.mainColor,
                                        offset: Offset(3.0, 3.0),
                                      ),
                                    ],
                                    color: AppColors.backgroundColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/images/termometer.png",
                                  height: 70),
                              Text(
                                "Vročina",
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 20.0,
                                        color: AppColors.mainColor,
                                        offset: Offset(3.0, 3.0),
                                      ),
                                    ],
                                    color: AppColors.backgroundColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/images/glavobol.png",
                                  height: 80),
                              Text(
                                "Glavobol",
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 20.0,
                                        color: AppColors.mainColor,
                                        offset: Offset(3.0, 3.0),
                                      ),
                                    ],
                                    color: AppColors.backgroundColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/images/tiredness.png",
                                  height: 70),
                              Text(
                                "Utrujenost",
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 20.0,
                                        color: AppColors.mainColor,
                                        offset: Offset(3.0, 3.0),
                                      ),
                                    ],
                                    color: AppColors.backgroundColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/images/smell.png",
                                  height: 70),
                              Text(
                                "Izguba vonja",
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        blurRadius: 20.0,
                                        color: AppColors.mainColor,
                                        offset: Offset(3.0, 3.0),
                                      ),
                                    ],
                                    color: AppColors.backgroundColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/images/dihanje.png",
                                  height: 77),
                              Text(
                                "Težave pri dihanju",
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 20.0,
                                      color: AppColors.mainColor,
                                      offset: Offset(3.0, 3.0),
                                    ),
                                  ],
                                  color: AppColors.backgroundColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
