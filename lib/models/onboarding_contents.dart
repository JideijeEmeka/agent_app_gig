class UnboardingContents {
  final String image;
  final String title;
  final String description;

  UnboardingContents(
      {required this.image, required this.title, required this.description});
}

List<UnboardingContents> contents = [
  UnboardingContents(
      image: "assets/images/onboard1.png",
      title: "International shipping",
      description:
          "Get your packages delivered via \nour courier service in one app"),
  UnboardingContents(
      image: "assets/images/onboard2.png",
      title: "Food delivery",
      description: "Get your food from different \nvendors delivered to you"),
  UnboardingContents(
      image: "assets/images/onboard3.png",
      title: "Fast delivery",
      description:
          "Get all your packages delivered \nswiftly to your location"),
];
