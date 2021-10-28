
class Categori {
  num price;
  String name;
  String imageUrl;
  String id;
  Categori(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.price});
      factory Categori.fromjson(Map<String , dynamic>json){
        return Categori(id:json ['id'], imageUrl:json ['imageUrl'], name:json ['name'], price:json ['price']);
      }
}
