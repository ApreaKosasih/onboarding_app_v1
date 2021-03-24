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
  sliderModel.setTitle("Temukan\nKampus Ideal");
  sliderModel.setDesc(
      "Informasi mengenai rekomendasi kampus (PTS) terbaik di seluruh wilayah Indonesia dengan berbagai pilihan kelas dan program studi favorit.");

  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setImgAssetsPath("assets/bg2.png");
  sliderModel.setTitle("Kuliah Mudah,\nBahkan Dari Rumah");
  sliderModel.setDesc(
      "Daftar kuliah tidak pernah semudah ini, temukan kampus terbaik yang kami sarankan dengan mudah cepat dan tepat !");

  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setImgAssetsPath("assets/bg3.png");
  sliderModel.setTitle("Daftar\nSekarang !");
  sliderModel.setDesc(
      "Gunakan berbagai macam fitur dari eduNitas yang akan memberikan kamu kemudahan dalam menjalani aktivitas perkuliahan");

  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
