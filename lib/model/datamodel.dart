class DataModel{
  String name;
  String img;
  int price;
  String location;
  int stars;
  String description;
DataModel({required this.name,required this.price,required this.location,required this.stars,required this.description,required this.img});
factory DataModel.fromJson(Map<String,dynamic>json){
  return DataModel(name: json["name"], price: json["price"], location: json["location"], stars: json["stars"], description:json["description"],img: json["img"]);
}
}