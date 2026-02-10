import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:marquee/marquee.dart';
import 'package:webview_skops/default/size_config.dart';

class HomeCarousel extends StatelessWidget {
  final List<Widget> carouselList = [
    Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 5 / 3.6,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/images/banner.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 100 / 7.2,
    ),
    Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 5 / 3.6,
      ),
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 100 / 7.2,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/images/banner 2.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 5 / 3.6,
      ),
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 100 / 7.2,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/images/banner 3.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.safeBlockVertical * 112 / 7.2,
      width: SizeConfig.screenWidth,
      color: Colors.white,
      child: Column(
        children: [
          CarouselSlider(
            items: carouselList,
            options: CarouselOptions(
              height: SizeConfig.safeBlockVertical * 100 / 7.2,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: SizeConfig.safeBlockHorizontal * 10 / 3.6),
        ],
      ),
    );
  }
}
