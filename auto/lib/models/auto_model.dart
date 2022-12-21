
class Auto{
  String aid;
  String? image;
  String? km;
  String constructor;
  String model;
  String? cc;
  String? yearProduction;
  String? description;
  String? supply;
  double? price;
  String? miniDescription;
  bool isFavorite;
  bool? vat;
  int? numberOwner;
  String? gearBox;
  int? seats;
  String? color;
  List<String?> equipmentList;
  List<String?> consumptionList;

  Auto({
    required this.aid,
    this.km,
    this.image,
    required this.constructor,
    required this.model,
    this.cc,
    this.yearProduction,
    this.description,
    this.miniDescription,
    this.price,
    this.supply,
    required this.isFavorite,
    this.vat,
    this.numberOwner,
    this.gearBox,
    this.seats,
    this.color,
    required this.equipmentList,
    required this.consumptionList,
    
  });
}
 