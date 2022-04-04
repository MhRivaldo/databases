class Item {
  int? _id;
  String? _name;
  int? _price;

  int get id => _id!;

  String get name => _name!;
  set name(String value) => _name = value;

  int get price => _price!;
  set price(int value) => _price = value;

  // ------------- kontruktor versi 1 -------------
  Item(this._name, this._price);

  // ------------- kontruktor versi 2 -------------
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }
}
