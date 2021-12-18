class Location {
  String city;
  String country;
  String text;
  String image;
  int reviews;
  double rating;
  int start;
  dynamic pricing;

  Location(
      {required this.city,
      required this.country,
      required this.text,
      required this.image,
      required this.reviews,
      required this.start,
      required this.rating,
      required this.pricing});
}

List<Location> locations = [
  Location(
      city: "Bali",
      country: "Indonesia",
      text:
          "Bali is a beautiful indonesia island with a big variety of landscape blessings, it's a great destination for your next trip",
      reviews: 32,
      start: 5,
      rating: 4.92,
      pricing: {"flight": 199, "Hotel": 49},
      image: "assets/images/bali.jpg"),
  Location(
      city: "Oslo",
      country: "Norway",
      text:
          "Oslo is a beautiful Norway island with a big variety of landscape blessings, it's a great destination for your next trip",
      reviews: 24,
      start: 4,
      rating: 4.62,
      pricing: {"flight": 699, "Hotel": 25},
      image: "assets/images/montain.jpg"),
  Location(
      city: "Oahu",
      country: "Hawaii",
      text:
          "Oahu is in Hawaii with a big variety of landscape blessings, it's a great destination for your next trip",
      reviews: 41,
      start: 5,
      rating: 4.82,
      pricing: {"flight": 579, "Hotel": 29},
      image: "assets/images/ocean.jpg")
];
