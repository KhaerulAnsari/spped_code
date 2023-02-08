class Destination {
  String? title;
  String? location;
  String? imageUrl;
  int? price;

  Destination({
    this.title,
    this.location,
    this.imageUrl,
    this.price,
  });
}

List<Destination> mockDestination = [
  Destination(
    title: 'Very beautiful river and surrounded by mountains.',
    location: 'Khazastan',
    imageUrl: 'images/destination/destination1.png',
    price: 3500000,
  ),
  Destination(
    title: 'Very beautiful blue beach.',
    location: 'Spanyol',
    imageUrl: 'images/destination/destination2.png',
    price: 2500000,
  ),
  Destination(
    title: 'Half bridge surrounded by beautiful hills.',
    location: 'Norway',
    imageUrl: 'images/destination/destination3.png',
    price: 8000000,
  ),
  Destination(
    title: 'Very unique building and beautiful.',
    location: 'Kyoto, Japan',
    imageUrl: 'images/destination/destination4.png',
    price: 5000000,
  ),
  Destination(
    title: 'Hongkong skyline from victoria harbour.',
    location: 'Hongkong',
    imageUrl: 'images/destination/destination5.png',
    price: 2000000,
  ),
];
