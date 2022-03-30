class Item {
  int? _id;
  String? _nama;
  int? _price;

  int? get id => _id;

  String? get nama => this._nama;
  set name(String value) => this._nama = value;

  get price => this._price;
  set price(value) => this._price = value;

//konstruktor versi 1
  Item(this._nama, this._price);

  //konstruktor versi 2 :konversi dari map ke item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['nama'];
    this._price = map['price'];
  }

  //konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = nama;
    map['price'] = price;
    return map;
  }
}
