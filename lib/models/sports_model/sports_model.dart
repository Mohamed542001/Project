class SportsModel {
  SportsModel(
      {
        required this.image,
        required this.name,
        required this.newPrice,
        required this.oldPrice});

  final String? image;
  final String? name;
  final String? newPrice;
  final String? oldPrice;

  factory SportsModel.fromJson(Map<String,dynamic> json) =>
      SportsModel(
        image: json['image'],
        name: json['name'],
        newPrice: json['newPrice'],
        oldPrice: json['oldPrice'],
      );


  Map<String,dynamic> toJson() =>{
    'image' : image,
    'name' : name,
    'newPrice' : newPrice,
    'oldPrice' : oldPrice,
  };
}