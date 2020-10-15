class ProdutoModel {
  int id;
  String image;
  String produtoName;
  double price;
  String optionDescription;
  Map<int, String> options = {};
  int qnt;
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
}
