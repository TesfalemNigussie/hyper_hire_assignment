class TopProduct {
  String productName;
  String productTitle;
  String productImage;
  int productRank;
  List<String> productDetail;
  double productRating;
  int productReview;
  List<String> productTags;

  TopProduct(
      {required this.productName,
      required this.productTitle,
      required this.productImage,
      required this.productRank,
      required this.productDetail,
      required this.productRating,
      required this.productReview,
      required this.productTags});
}
