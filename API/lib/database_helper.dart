import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'product_model.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'myntra.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE swiped_products (
        Product_id REAL,
        BrandName TEXT,
        Category TEXT,
        Individual_category TEXT,
        Description TEXT,
        DiscountPrice REAL,
        OriginalPrice REAL,
        DiscountOffer REAL,
        Ratings REAL,
        Preprocessed_Description TEXT
      )
    ''');
  }

  Future<void> insertProduct(Product product) async {
    final db = await database;
    await db.insert(
      'swiped_products',
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Product>> getSwipedProducts() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('swiped_products');
    List<Product> productList = List.generate(maps.length, (i) {
      return Product.fromMap(maps[i]);
    });

    // Print each product's details to the console
    productList.forEach((product) {
      print(
          'ID: ${product.Product_id}, BrandName: ${product.BrandName}, Category: ${product.Category}, '
          'Individual_category: ${product.Individual_category}, Description: ${product.Description}, '
          'DiscountPrice: ${product.DiscountPrice}, OriginalPrice: ${product.OriginalPrice}, '
          'DiscountOffer: ${product.DiscountOffer}, Ratings: ${product.Ratings}, ');
    });

    return productList;
  }

  Future<void> updateProduct(Product product) async {
    final db = await database;
    await db.update(
      'swiped_products',
      product.toMap(),
      where: 'Product_id = ?',
      whereArgs: [product.Product_id],
    );
  }

  Future<void> deleteProduct(int id) async {
    final db = await database;
    await db.delete(
      'swiped_products',
      where: 'Product_id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteAllProducts() async {
    final db = await database;
    await db.delete('swiped_products');
  }

  // New method to print database contents
  Future<void> printDatabaseContents() async {
    final products = await getSwipedProducts();
    products.forEach((product) {
      print(
          'ID: ${product.Product_id}, BrandName: ${product.BrandName}, Category: ${product.Category}, '
          'Individual_category: ${product.Individual_category}, Description: ${product.Description}, '
          'DiscountPrice: ${product.DiscountPrice}, OriginalPrice: ${product.OriginalPrice}, '
          'DiscountOffer: ${product.DiscountOffer}, Ratings: ${product.Ratings}, ');
    });
  }
}
