import 'package:flutter/material.dart';
import 'package:flutter_application_6/database_helper.dart';
import 'package:flutter_application_6/product_model.dart';
import 'package:tcard/tcard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DatabaseHelper dbHelper = DatabaseHelper();
  await dbHelper.printDatabaseContents();
  await dbHelper.deleteAllProducts();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myntra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SwipePage(),
    );
  }
}

class SwipePage extends StatefulWidget {
  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  final List<Map<String, dynamic>> products = [
    {
      "id": 4335679,
      "name": "zivame women black saree shapewear zi3023core0nude",
      "price": 278,
      "rating": 4.2,
      "ratings_count": 907,
      "discount": 69,
      "image": "assets/product1.jpg",
      "liked": null,
      "brand": "Zivame",
      "category": "Lingerie & Sleep Wear",
      "subcategory": "shapewear",
    },
    {
      "id": 12873874,
      "name": "anubhutee women pink  white printed kurta with trousers dupatta",
      "price": 1500,
      "rating": 4.5,
      "ratings_count": 1200,
      "discount": 50,
      "image": "assets/product2.jpg",
      "liked": null,
      "brand": "Anubhutee",
      "category": "Indian Wear",
      "subcategory": "kurta-sets",
    },
    {
      "id": 10473520,
      "name": "vishudh women blue  pink floral print a line kurta",
      "price": 899,
      "rating": 4.1,
      "ratings_count": 210,
      "discount": 55,
      "image": "assets/product3.jpg",
      "liked": null,
      "brand": "Vishudh",
      "category": "Indian Wear",
      "subcategory": "kurtas",
    },
    {
      "id": 12153330,
      "name": "anouk women mustard yellow  gold toned printed straight kurta",
      "price": 3200,
      "rating": 4.7,
      "ratings_count": 850,
      "discount": 30,
      "image": "assets/product4.jpg",
      "liked": null,
      "brand": "Anouk",
      "category": "Indian Wear",
      "subcategory": "kurtas",
    },
    {
      "id": 11173948,
      "name": "sangria women black  green printed straight kurta",
      "price": 749,
      "rating": 4.2,
      "ratings_count": 550,
      "discount": 25,
      "image": "assets/product5.jpg",
      "liked": null,
      "brand": "Sangria",
      "category": "Plus Size",
      "subcategory": "kurtas",
    },
    {
      "id": 11938872,
      "name": "elevanto women fuchsia pink solid bath robe",
      "price": 599,
      "rating": 4.4,
      "ratings_count": 320,
      "discount": 40,
      "image": "assets/product6.jpg",
      "liked": null,
      "brand": "ELEVANTO",
      "category": "Lingerie & Sleep Wear",
      "subcategory": "bath-robe",
    },
    {
      "id": 11245584,
      "name":
          "hrx by hrithik roshan black self striped seamless rapid dry yoga tights",
      "price": 1299,
      "rating": 4.3,
      "ratings_count": 780,
      "discount": 35,
      "image": "assets/product7.jpg",
      "liked": null,
      "brand": "HRX by Hrithik Roshan",
      "category": "Sports Wear",
      "subcategory": "tights",
    },
    {
      "id": 12150560,
      "name": "pluss black a line crop pure cotton top",
      "price": 799,
      "rating": 4.5,
      "ratings_count": 430,
      "discount": 50,
      "image": "assets/product8.jpg",
      "liked": null,
      "brand": "plusS",
      "category": "Plus Size",
      "subcategory": "tops",
    },
    {
      "id": 11530828,
      "name": "anayna women beige  pink screen print straight kurta",
      "price": 1199,
      "rating": 4.0,
      "ratings_count": 650,
      "discount": 20,
      "image": "assets/product9.jpg",
      "liked": null,
      "brand": "anayna",
      "category": "Indian Wear",
      "subcategory": "kurtas",
    },
    {
      "id": 10960692,
      "name": "anouk women blue  white printed indigo straight kurta",
      "price": 1499,
      "rating": 4.2,
      "ratings_count": 510,
      "discount": 45,
      "image": "assets/product10.jpg",
      "liked": null,
      "brand": "Anouk",
      "category": "Indian Wear",
      "subcategory": "kurtas",
    },
    {
      "id": 8350055,
      "name":
          "sangria women fuchsia  white layered printed kurta with trousers",
      "price": 2924,
      "rating": 4,
      "ratings_count": 890,
      "discount": 35,
      "image": "assets/product11.jpg",
      "liked": null,
      "brand": "sangria",
      "category": "Plus Size",
      "subcategory": "kurta-sets",
    },
    {
      "id": 11174094,
      "name": "sangria teal blue  coral pink floral print a line dress",
      "price": 2799,
      "rating": 4.3,
      "ratings_count": 430,
      "discount": 20,
      "image": "assets/product12.jpg",
      "liked": null,
      "brand": "sangria",
      "category": "Indian Wear",
      "subcategory": "dresses",
    },
    {
      "id": 13141478,
      "name": "azira women green printed kurta with palazzos  dupatta",
      "price": 3499,
      "rating": 4.4,
      "ratings_count": 750,
      "discount": 30,
      "image": "assets/product13.jpg",
      "liked": null,
      "brand": "azira",
      "category": "Indian wear",
      "subcategory": "kurta sets",
    },
    {
      "id": 12337118,
      "name": "anouk women green printed kurti with dhoti pants",
      "price": 1599,
      "rating": 4.1,
      "ratings_count": 320,
      "discount": 25,
      "image": "assets/product14.jpg",
      "liked": null,
      "brand": "anouk",
      "category": "Indian wear",
      "subcategory": "Kurta-set",
    },
    {
      "id": 12650884,
      "name": "herenow women blue schifilli embroidered pure cotton top",
      "price": 1199,
      "rating": 4.5,
      "ratings_count": 520,
      "discount": 35,
      "image": "assets/product15.jpg",
      "liked": null,
      "brand": "HERE&NOW",
      "category": "Plus Size",
      "subcategory": "Tops",
    },
    {
      "id": 8350425,
      "name": "sangria women green  yellow printed straight kurta",
      "price": 2999,
      "rating": 4.7,
      "ratings_count": 980,
      "discount": 10,
      "image": "assets/product16.jpg",
      "liked": null,
      "brand": "Sangria",
      "category": "Plus Size",
      "subcategory": "Kurtas",
    },
    {
      "id": 12412864,
      "name":
          "varanga women mustard yellow solid straight kurta with thread work",
      "price": 3999,
      "rating": 4.3,
      "ratings_count": 430,
      "discount": 20,
      "image": "assets/product17.jpg",
      "liked": null,
      "brand": "Varanga",
      "category": "Indian Wear",
      "subcategory": "Kurtas",
    },
    {
      "id": 7569310,
      "name": "zivame women grey tummy  thigh shaper zi0pssan03agrey",
      "price": 1899,
      "rating": 4.6,
      "ratings_count": 760,
      "discount": 15,
      "image": "assets/product18.jpg",
      "liked": null,
      "brand": "Zivame",
      "category": "Lingerie & Sleep Wear",
      "subcategory": "shapewear",
    },
    {
      "id": 7102379,
      "name": "herenow black ethnic motifs a line top",
      "price": 899,
      "rating": 4.2,
      "ratings_count": 320,
      "discount": 25,
      "image": "assets/product19.jpg",
      "liked": null,
      "brand": "HERE&NOW",
      "category": "Plus Size",
      "subcategory": "Tops",
    },
    {
      "id": 13021502,
      "name":
          "anubhutee women red  off white bandhani print kurta with palazzos",
      "price": 1499,
      "rating": 4.0,
      "ratings_count": 200,
      "discount": 35,
      "image": "assets/product20.jpg",
      "liked": null,
      "brand": "Anubhutee",
      "category": "Indianwear",
      "subcategory": "Kurta-sets",
    },
    // ... (remaining products)
  ];
  final TCardController _controller = TCardController();
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> recommendedProducts = [];

  void updateRecommendations() async {
    List<Product> likedProducts = await dbHelper.getSwipedProducts();
    List<Map<String, dynamic>> productMaps =
        likedProducts.map((product) => product.toMap()).toList();

    List<Map<String, dynamic>> recommendations =
        await getRecommendations(productMaps);
    setState(() {
      recommendedProducts = recommendations;
    });
  }

  Future<List<Map<String, dynamic>>> getRecommendations(
      List<Map<String, dynamic>> likedProducts) async {
    // Implement the logic to call the TFLite model and get recommendations
    // Placeholder for the actual recommendation logic
    List<Map<String, dynamic>> recommendations = [];

    for (var product in products) {
      if (!likedProducts
          .any((liked) => liked['Description'] == product['name'])) {
        recommendations.add(product);
      }
    }

    return recommendations;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myntra'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.recommend),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecommendationPage(products: recommendedProducts),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFCFC7F8),
              Color(0xFFACD6FF),
            ], // Baby Pink and Baby Blue gradient
          ),
        ),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: TCard(
              controller: _controller,
              cards: products
                  .map((product) => ProductCard(product: product))
                  .toList(),
              onForward: (index, info) {
                if (info.direction == SwipDirection.Right) {
                  _onSwipeRight(index - 1);
                }
              },
              onBack: (index, info) {
                if (info.direction == SwipDirection.Left) {
                  setState(() {
                    products[index]['liked'] = false;
                    print('DisLiked Product ID: ${products[index]["id"]}');
                  });
                }
              },
              onEnd: () {
                updateRecommendations();
              },
            ),
          ),
        ),
      ),
    );
  }

  void _onSwipeRight(int index) {
    setState(() {
      products[index]['liked'] = true;
      _addToDatabase(products[index]); // Add liked product to the database
      print(
          'Liked Product ID: ${products[index]["id"]}'); // Print the liked product ID
    });
  }

  void _addToDatabase(Map<String, dynamic> product) async {
    // Create a Product object from the map
    Product newProduct = Product(
      Product_id: product['id'],
      BrandName: product['brand'],
      Category: product['category'],
      Individual_category: product['subcategory'],
      Description: product['name'],
      DiscountPrice: product['price'] * (1 - (product['discount'] / 100)),
      OriginalPrice: product['price'].toDouble(),
      DiscountOffer: product['discount'].toDouble(),
      Ratings: product['rating'].toDouble(),
    );

    // Insert the product into the database
    try {
      await DatabaseHelper().insertProduct(newProduct);
      print('Product added to database: ${newProduct.BrandName}');
    } catch (e) {
      print('Error adding product to database: $e');
    }
  }
}

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(product['image']),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['name'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      SizedBox(width: 4),
                      Text(
                        product['rating'].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '(${product['ratings_count']} ratings)',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '₹${product['price']} (${product['discount']}% discount)',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '(Incl. of all taxes)',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  RecommendationPage({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myntra'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFCFC7F8),
              Color(0xFFACD6FF),
            ], // Baby Pink and Baby Blue gradient
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Here are some products that match your style :)",
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              products.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'No products liked yet.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: products.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  product['image'],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product['name'],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '₹${product['price']} (${product['discount']}% off)',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 16),
                                        SizedBox(width: 4),
                                        Text(
                                          product['rating'].toString(),
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
