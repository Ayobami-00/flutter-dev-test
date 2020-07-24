class CardItemModel {
  String imagePath;
  String title;
  int number;

  CardItemModel({this.imagePath, this.title, this.number});

  void setImageAssetPath(String getImagepath) {
    imagePath = getImagepath;
  }

  void setTile(String getTitle) {
    title = getTitle;
  }

  void setNumber(int getNumber) {
    number = getNumber;
  }

  String getImageAssetPath() {
    return imagePath;
  }

  String getTitle() {
    return title;
  }

  int getNumber() {
    return number;
  }
}

List<CardItemModel> getCardItems() {
  List<CardItemModel> items = new List<CardItemModel>();
  CardItemModel cardItemModel = CardItemModel();

  //0

  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/commerce-and-shopping.png");
  cardItemModel.setTile("Sales Register");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //1
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/product.png");
  cardItemModel.setTile("Product/Service");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);



  //2
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/sms.png");
  cardItemModel.setTile("SMS");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  

  //3
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/sales.png");
  cardItemModel.setTile("Notifications");
  cardItemModel.setNumber(3);
  items.add(cardItemModel);

  

  //4
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/report.png");
  cardItemModel.setTile("Reports");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //5
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/sales.png");
  cardItemModel.setTile("Sales");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //6
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/man.png");
  cardItemModel.setTile("Staffs");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //7
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/expenses.png");
  cardItemModel.setTile("Expenses");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //8
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/customer-behavior.png");
  cardItemModel.setTile("Customers");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //9
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/wifi.png");
  cardItemModel.setTile("Offline Sales");
  cardItemModel.setNumber(3);
  items.add(cardItemModel);

  //10
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/pay.png");
  cardItemModel.setTile("Payments");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //11
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/gear.png");
  cardItemModel.setTile("Setting");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //12
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/inventory.png");
  cardItemModel.setTile("Suppliers");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  //13
  cardItemModel = CardItemModel();
  cardItemModel.setImageAssetPath("assets/icons/budget.png");
  cardItemModel.setTile("Calculator");
  cardItemModel.setNumber(null);
  items.add(cardItemModel);

  return items;
}
