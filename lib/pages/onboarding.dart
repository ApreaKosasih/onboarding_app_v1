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
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[300],
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
              child: Row(
                children: [
                  InkWell(onTap: () {}, child: Text("Skip")),
                  Row(
                    children: [
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                  InkWell(onTap: () {}, child: Text("Next")),
                ],
              ),
            )
          : Container(
              child: Text(""),
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
          SizedBox(
            height: 56,
          ),
          Text(title),
          SizedBox(
            height: 450,
          ),
          Text(desc),
        ],
      ),
    );
  }
}
