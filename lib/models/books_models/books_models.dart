class BooksModels {
  BooksModels(
      {required this.author,
      required this.image,
      required this.name,
      required this.newPrice,
      required this.oldPrice});

  final String? author;
  final String? image;
  final String? name;
  final String? newPrice;
  final String? oldPrice;

  factory BooksModels.fromJson(Map<String,dynamic> json) =>
      BooksModels(
        author: json['author'],
        image: json['image'],
        name: json['name'],
        newPrice: json['newPrice'],
        oldPrice: json['oldPrice'],
      );


  Map<String,dynamic> toJson() =>{
    'author' : author,
    'image' : image,
    'name' : name,
    'newPrice' : newPrice,
    'oldPrice' : oldPrice,
  };
}
