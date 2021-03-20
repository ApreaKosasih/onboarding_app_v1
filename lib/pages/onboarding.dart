import 'package:flutter/material.dart';
import 'package:onboardingappv1/data/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: deprecated_member_use
  List<SliderModel> slides = new List<SliderModel>();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    slides = getSlide();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: slides.length,
          itemBuilder: (context, index) {
            return Slider(
              imgAssetsPath: slides[index].getImgAssetsPath(),
              title: slides[index].getTitle(),
              desc: slides[index].getDesc(),
            );
          }),
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
