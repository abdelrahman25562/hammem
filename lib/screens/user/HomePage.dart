import 'dart:async';

import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammem/screens/user/Info.dart';
import 'package:hammem/screens/user/MoreInfo.dart';
import 'package:hammem/screens/user/QuestionPage/questionPage.dart';
import 'package:hammem/widgets/Custom_button.dart';

const String testDevice = 'ca-app-pub-0053559627222209/9701685577';

class HomePage extends StatefulWidget {
  static String id = 'Homepage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Game', 'Mario'],
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        //Change BannerAd adUnitId with Admob ID
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: InterstitialAd.testAdUnitId,
        //Change Interstitial AdUnitId with Admob ID
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("IntersttialAd $event");
        });
  }

  TabController _controller;
  Timer _time;
  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
    //Change appId With Admob Id
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    _controller = TabController(length: 3, vsync: this);
    _time = Timer.periodic(new Duration(seconds: 5), (_) {
      _controller.animateTo(_controller.index == _controller.length - 1
          ? 0
          : _controller.index++);
    });
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    _controller.dispose();
    _time.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 18.0,
                left: 18.0,
                top: 8.0,
              ),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(80.0)),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: DefaultTabController(
                  length: 3,
                  child: TabBarView(
                    controller: _controller,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0)),
                        child: Image.asset(
                          'assets/images/scroll1.webp',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/scroll2.webp',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/scroll3.webp',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 18.0,
                  left: 18.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    color: Colors.purpleAccent,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: TabPageSelector(
                      controller: _controller,
                      selectedColor: Colors.white,
                      indicatorSize: 6,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 70.0,
                left: 70.0,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height*0.1,
                child: FlatButton(
                  onPressed: () {
                    createInterstitialAd()
                      ..load()
                      ..show();
                    Navigator.pushNamed(context, Info.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        ' تعريف بالتطبيق  ',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo',fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xffE7AEC3),
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Button(
              onClick: () {
                Navigator.pushNamed(context, Question.id);
              },
              color: Color(0xffE7AEC3),
              image: 'assets/images/exam.png',
              hint: 'ابدء الاستبيان',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Button(
              onClick: () {
                Navigator.pushNamed(context, HomePage.id);
              },
              color: Color(0xffE7AEC3),
              hint: 'استعراض التقرير',
              image: 'assets/images/result.png',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Button(
              onClick: () {
                Navigator.pushNamed(context, More.id);
              },
              color: Color(0xffE7AEC3),
              hint: 'ثقف نفسك',
              image: 'assets/images/thaqaf.png',
            )
          ],
        ),
      ),
    );
  }
}
