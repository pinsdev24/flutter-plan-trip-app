class Rubric{
  String image;
  String title;
  int numberLocation;

  Rubric({required this.image, required this.title, required this.numberLocation});
}

List<Rubric> rubrics = [
  Rubric(image: "assets/images/bali.jpg", title: "Chillout", numberLocation: 32),
  Rubric(image: "assets/images/montain.jpg", title: "Extreme", numberLocation: 31),
  Rubric(image: "assets/images/trip.jpg", title: "Ocean", numberLocation: 32),
  Rubric(image: "assets/images/night2.jpg", title: "Hotels", numberLocation: 63),
];