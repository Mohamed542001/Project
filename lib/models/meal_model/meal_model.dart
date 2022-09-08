class MealModel {
  MealModel(
      {
        required this.image,
        required this.name,
        required this.newPrice,
        required this.oldPrice});

  final String? image;
  final String? name;
  final String? newPrice;
  final String? oldPrice;

  factory MealModel.fromJson(Map<String,dynamic> json) =>
      MealModel(
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