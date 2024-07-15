class Product {
  final int? Product_id;
  final String BrandName;
  final String Category;
  final String Individual_category;
  final String Description;
  final double DiscountPrice;
  final double OriginalPrice;
  final double DiscountOffer;
  final double Ratings;

  Product({
    this.Product_id,
    required this.BrandName,
    required this.Category,
    required this.Individual_category,
    required this.Description,
    required this.DiscountPrice,
    required this.OriginalPrice,
    required this.DiscountOffer,
    required this.Ratings,
  });

  Map<String, dynamic> toMap() {
    return {
      'Product_id': Product_id,
      'BrandName': BrandName,
      'Category': Category,
      'Individual_category': Individual_category,
      'Description': Description,
      'DiscountPrice': DiscountPrice,
      'OriginalPrice': OriginalPrice,
      'DiscountOffer': DiscountOffer,
      'Ratings': Ratings,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      Product_id: map['Product_id'],
      BrandName: map['BrandName'],
      Category: map['Category'],
      Individual_category: map['Individual_category'],
      Description: map['Description'],
      DiscountPrice: map['DiscountPrice'],
      OriginalPrice: map['OriginalPrice'],
      DiscountOffer: map['DiscountOffer'],
      Ratings: map['Ratings'],
    );
  }
}
