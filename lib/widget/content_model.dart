class unbordingcontent {
  String image;
  String title;
  String description;

  unbordingcontent(
      {required this.image, required this.title, required this.description});
}

List<unbordingcontent> content = [
  unbordingcontent(
      image: "assets/screen1.png",
      title: "Select from our \n   best menu",
      description: "peek your food from menu \n   more than 35 items"),
  unbordingcontent(
      image: "assets/screen2.png",
      title: "Easy and online payment",
      description:
          "you can pay cash on delevery and card payment is available"),
  unbordingcontent(
      image: "assets/screen3.png",
      title: "Quick delevery at your doorsteps",
      description: "Delever you food at your \n    doorsteps")
];
