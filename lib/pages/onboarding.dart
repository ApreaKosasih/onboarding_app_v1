import 'package:flutter/material.dart';
import 'package:onboardingappv1/data/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: deprecated_member_use
  List<SliderModel> slides = new List<SliderModel>();
  int currentIndex = 0;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    slides = getSlide();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.lightBlue[900] : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: slides.length,
          onPageChanged: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index) {
            return Slider(
              imgAssetsPath: slides[index].getImgAssetsPath(),
              title: slides[index].getTitle(),
              desc: slides[index].getDesc(),
            );
          }),
      bottomSheet: currentIndex != slides.length - 1
          ? Container(
              height: 72,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                  GestureDetector(onTap: () {}, child: Text("Next")),
                ],
              ),
            )
          : Container(
              height: 72,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                  GestureDetector(onTap: () {}, child: Text("Skip")),
                ],
              ),
            ),
    );
  }
}

// ignore: must_be_immutable
class Slider extends StatelessWidget {
  String imgAssetsPath, title, desc;
  Slider({this.imgAssetsPath, this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgAssetsPath),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 72),
            margin: EdgeInsets.only(left: 56, right: 56),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Colors.lightBlue[900]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 300),
            margin: EdgeInsets.all(48),
            child: Text(
              desc,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
