class MovieModel {
  String? name;
  String? category;
  double? rating;
  String? imageUrl;

  MovieModel({
    this.name,
    this.category,
    this.rating,
    this.imageUrl,
  });
}

List<MovieModel> mockMovie = [
  MovieModel(
    name: 'Mulan Session',
    category: 'History, War',
    rating: 3,
    imageUrl: 'images/movie4.png',
  ),
  MovieModel(
    name: 'Beauty & Beast',
    category: 'Sci-Fiction',
    rating: 5,
    imageUrl: 'images/movie5.png',
  ),
  MovieModel(
    name: 'The Dark Knight',
    category: 'Heroes',
    rating: 5,
    imageUrl: 'images/movie6.png',
  ),
  MovieModel(
    name: 'The Dark Tower',
    category: 'Action',
    rating: 4,
    imageUrl: 'images/movie7.png',
  ),
];
