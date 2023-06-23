class CurrencyModel {
  String? title;
  String? code;
  String? cbPrice;
  String? nbuBuyPrice;
  String? nbuCellPrice;
  String? date;

  CurrencyModel(
      {this.title,
      this.code,
      this.cbPrice,
      this.nbuBuyPrice,
      this.nbuCellPrice,
      this.date});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    code = json['code'];
    cbPrice = json['cb_price'];
    nbuBuyPrice = json['nbu_buy_price'];
    nbuCellPrice = json['nbu_cell_price'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = title;
    data['code'] = code;
    data['cb_price'] = cbPrice;
    data['nbu_buy_price'] = nbuBuyPrice;
    data['nbu_cell_price'] = nbuCellPrice;
    data['date'] = date;
    return data;
  }

  getCurenncy() {}
}
