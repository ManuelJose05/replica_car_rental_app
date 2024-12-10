class FeaturesModel {
  String icon;
  String title;
  String description;

  FeaturesModel(this.icon,this.title,this.description);
}

List<FeaturesModel> features = [
  FeaturesModel('assets/gas.svg', 'Diesel', 'Common Rail Fuel Injection'),
  FeaturesModel('assets/kilometr.svg', 'Acceleration', '0 - 100km / 11s'),
  FeaturesModel('assets/cold.svg', 'Cool Seat', 'Temp Control on seat'),
];