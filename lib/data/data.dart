class SliderModel {
  String imagePath;
  String title;
  String desc;

  SliderModel({this.imagePath, this.title, this.desc});

  void setImgAssetsPath(String getImagePath) {
    imagePath = getImagePath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImgAssetsPath() {
    return imagePath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlide() {
  // ignore: deprecated_member_use
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImgAssetsPath("assets/bg1.png");
  sliderModel.setTitle("KuliahOnline");
  sliderModel.setDesc("loremipsum");

  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setImgAssetsPath("assets/bg2.png");
  sliderModel.setTitle("KuliahOnline");
  sliderModel.setDesc("loremipsum");

  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setImgAssetsPath("assets/bg3.png");
  sliderModel.setTitle("KuliahOnline");
  sliderModel.setDesc("loremipsum");

  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
