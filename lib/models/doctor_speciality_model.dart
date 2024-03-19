class CartModel {
  String? name;
  final String UrlImage;

  CartModel({required this.name,required this.UrlImage});
}

final List<CartModel> carts = [
  CartModel(
      name: "General",
      UrlImage:
      "assets/images/group.png"),
  CartModel(
      name: "Dentist",
      UrlImage:
      "assets/images/icons8-tooth-30.png"),
  CartModel(
      name: "ophthalmic",
      UrlImage:
      "assets/images/eye.png"),
  CartModel(
      name: "Nutrition",
      UrlImage:
      "assets/images/icons8-peach-30.png"),
  CartModel(
      name: "Neurology",
      UrlImage:
      "assets/images/icons8-brain-30.png"),
  CartModel(
      name: "Pediatric",
      UrlImage:
      "assets/images/icons8-children-30.png"),
  CartModel(
      name: "Radiology",
      UrlImage:
      "assets/images/icons8-x-ray-30.png"),
  CartModel(
      name: "More",
      UrlImage:
      "assets/images/icons8-more-30.png"),


];