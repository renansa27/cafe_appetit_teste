class ProdutoModel {
  int id;
  String image;
  String produtoName;
  double price;
  String optionDescription;
  Map<int, String> options = {};
  int qnt = 0;
  String note;

  ProdutoModel({
    this.id,
    this.image,
    this.produtoName,
    this.price,
    this.optionDescription,
    this.options,
    this.qnt,
    this.note,
  });

  double getTotal() {
    return this.price * this.qnt;
  }
}
