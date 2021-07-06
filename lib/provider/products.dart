import 'package:flutter/material.dart';
import 'package:myapp/models/product_model.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _products = [
    Product(
        "SamSung1",
        "Samsung Galaxy S9",
        "Samsung Galaxy S9 G9 0960U 64GB Unlocked GSM 4G LTE Phone w/ 12MP Camera - Midnight Black",
        "50.99",
        "https://images-na.ssl-images-amazon.com/images/I/81%2Bh9mpyQmL._AC_SX679_.jpg",
        "Phones",
        "Samsung",
        65,
        true,
        false),
    Product(
        "Apple1",
        "Apple Watch Series 5",
        "Apple Watch Series 5 (GPS, 40mm) - Space Gray Aluminum Case with Black Sport Band",
        "100.99",
        "https://images-na.ssl-images-amazon.com/images/I/71DnIj%2B%2BjUL._AC_SX466_.jpg",
        "Watch",
        "Apple",
        12,
        true,
        false),
    Product(
        "LouisVutton1",
        "LOUIS VUITTON MONOGRAM LOCKIT PM",
        "Authentic Pre-Owned Louis Vuitton Monogram Lockit PM",
        "2.500",
        "https://cdn.shopify.com/s/files/1/0988/4598/products/louisvuittonmonogramlockit_4.jpg?v=1622276100",
        "Clothes",
        "LouisVutton",
        22,
        false,
        false),
    Product(
        'Samsung Galaxy A10s',
        'Samsung Galaxy A10s',
        'Samsung Galaxy A10s A107M - 32GB, 6.2" HD+ Infinity-V Display, 13MP+2MP Dual Rear +8MP Front Cameras, GSM Unlocked Smartphone - Blue.',
        "50.99",
        'https://images-na.ssl-images-amazon.com/images/I/51ME-ADMjRL._AC_SL1000_.jpg',
        'Samsung',
        "Phones",
        1002,
        false,
        false),
    Product(
        'Samsung Galaxy A51',
        'Samsung Galaxy A51',
        'Samsung Galaxy A51 (128GB, 4GB) 6.5", 48MP Quad Camera, Dual SIM GSM Unlocked A515F/DS- Global 4G LTE International Model - Prism Crush Blue.',
        "50.99",
        'https://images-na.ssl-images-amazon.com/images/I/61HFJwSDQ4L._AC_SL1000_.jpg',
        'Samsung',
        "Phones",
        6423,
        true,
        false),
    Product(
        'Huawei P40 Pro',
        'Huawei P40 Pro',
        'Huawei P40 Pro (5G) ELS-NX9 Dual/Hybrid-SIM 256GB (GSM Only | No CDMA) Factory Unlocked Smartphone (Silver Frost) - International Version',
        "900.99",
        'https://images-na.ssl-images-amazon.com/images/I/6186cnZIdoL._AC_SL1000_.jpg',
        'Huawei',
        "Phones",
        3,
        true,
        false),
    Product(
        "iPhone 12 Pro",
        'iPhone 12 Pro',
        'New Apple iPhone 12 Pro (512GB, Gold) [Locked] + Carrier Subscription',
        "1100",
        'https://m.media-amazon.com/images/I/71cSV-RTBSL.jpg',
        'Apple',
        "Phones",
        3,
        true,
        false),
    Product(
        'iPhone 12 Pro Max ',
        'iPhone 12 Pro Max ',
        'New Apple iPhone 12 Pro Max (128GB, Graphite) [Locked] + Carrier Subscription',
        "50.99",
        'https://m.media-amazon.com/images/I/71XXJC7V8tL._FMwebp__.jpg',
        'Apple',
        "Phones",
        2654,
        false,
        false),
    Product(
        'Hanes Mens ',
        'Long Sleeve Beefy Henley Shirt',
        'Hanes Men\'s Long Sleeve Beefy Henley Shirt ',
        "22.30",
        'https://images-na.ssl-images-amazon.com/images/I/91YHIgoKb4L._AC_UX425_.jpg',
        'No brand',
        'Clothes',
        58466,
        true,
        false),
    Product(
        'Weave Jogger',
        'Weave Jogger',
        'Champion Mens Reverse Weave Jogger',
        "58.99",
        'https://m.media-amazon.com/images/I/71g7tHQt-sL._AC_UL320_.jpg',
        'H&M',
        'Clothes',
        84894,
        false,
        false),
    Product(
        'Adeliber Dresses for Womens',
        'Adeliber Dresses for Womens',
        'Adeliber Dresses for Womens, Sexy Solid Sequined Stitching Shining Club Sheath Long Sleeved Mini Dress',
        "50.99",
        'https://images-na.ssl-images-amazon.com/images/I/7177o9jITiL._AC_UX466_.jpg',
        'H&M',
        'Clothes',
        49847,
        true,
        false),
    Product(
        'Tanjun Sneakers',
        'Tanjun Sneakers',
        'NIKE Men\'s Tanjun Sneakers, Breathable Textile Uppers and Comfortable Lightweight Cushioning ',
        "191.89",
        'https://images-na.ssl-images-amazon.com/images/I/71KVPm5KJdL._AC_UX500_.jpg',
        'Nike',
        'Shoes',
        65489,
        false,
        false),
    Product(
        'Training Pant Female',
        'Training Pant Female',
        'Nike Epic Training Pant Female ',
        "189.99",
        'https://images-na.ssl-images-amazon.com/images/I/61jvFw72OVL._AC_UX466_.jpg',
        'Nike',
        'Clothes',
        89741,
        false,
        false),
    Product(
        'Trefoil Tee',
        'Trefoil Tee',
        'Originals Women\'s Trefoil Tee ',
        "88.88",
        'https://images-na.ssl-images-amazon.com/images/I/51KMhoElQcL._AC_UX466_.jpg',
        'Addidas',
        'Clothes',
        8941,
        true,
        false),
    Product(
        'Long SleeveWoman',
        'Long Sleeve woman',
        ' Boys\' Long Sleeve Cotton Jersey Hooded T-Shirt Tee',
        "68.29",
        'https://images-na.ssl-images-amazon.com/images/I/71lKAfQDUoL._AC_UX466_.jpg',
        'Addidas',
        'Clothes',
        3,
        false,
        false),
    Product(
        'Eye Cream for Wrinkles',
        'Eye Cream for Wrinkles',
        'Olay Ultimate Eye Cream for Wrinkles, Puffy Eyes + Dark Circles, 0.4 fl oz',
        "54.98",
        'https://images-na.ssl-images-amazon.com/images/I/61dwB-2X-6L._SL1500_.jpg',
        'No brand',
        'Beauty & Health',
        8515,
        false,
        false),
    Product(
        'Mango Body Yogurt',
        'Mango Body Yogurt',
        'The Body Shop Mango Body Yogurt, 48hr Moisturizer, 100% Vegan, 6.98 Fl.Oz',
        "80.99",
        'https://images-na.ssl-images-amazon.com/images/I/81w9cll2RmL._SL1500_.jpg',
        'No brand',
        'Beauty & Health',
        3,
        false,
        false),
    Product(
        'Food Intensive Skin',
        'Food Intensive Skin',
        'Weleda Skin Food Intensive Skin Nourishment Body Butter, 5 Fl Oz',
        "50.99",
        'https://images-na.ssl-images-amazon.com/images/I/71E6h0kl3ZL._SL1500_.jpg',
        'No Brand',
        'Beauty & Health',
        38425,
        true,
        false),
    Product(
        'Ultra Shea Body Cream',
        'Ultra Shea Body Cream',
        'Bath and Body Works IN THE STARS Ultra Shea Body Cream (Limited Edition) 8 Ounce ',
        "14,09",
        'https://images-na.ssl-images-amazon.com/images/I/61RkTTLRnNL._SL1134_.jpg',
        "No Brand",
        'Beauty & Health',
        384,
        false,
        false),
    Product(
        'Soft Moisturizing Crème',
        'Soft Moisturizing Crème',
        'NIVEA Soft Moisturizing Crème- Pack of 3, All-In-One Cream For Body, Face and Dry Hands - Use After Hand Washing - 6.8 oz. Jars',
        "50.99",
        'https://images-na.ssl-images-amazon.com/images/I/619pgKveCdL._SL1500_.jpg',
        'No Brand',
        'Beauty & Health',
        45,
        true,
        false),
    Product(
        'Body Cream Cocoa Butter',
        'Body Cream Cocoa Butter',
        'NIVEA Cocoa Butter Body Cream 15.5 Oz',
        "84.99",
        'https://images-na.ssl-images-amazon.com/images/I/61EsS5sSaCL._SL1500_.jpg',
        'No brand',
        'Beauty & Health',
        98432,
        true,
        false),
    Product(
        'Skin Repair Body Lotion',
        'Skin Repair Body Lotion',
        'O\'Keeffe\'s Skin Repair Body Lotion and Dry Skin Moisturizer, Pump Bottle, 12 ounce, Packaging May Vary',
        "890.99",
        'https://images-na.ssl-images-amazon.com/images/I/71e7ksQ-xyL._AC_SL1500_.jpg',
        'No brand',
        'Beauty & Health',
        3811,
        false,
        false),
    Product(
        '15 5000 Laptop',
        '15 5000 Laptop',
        'Dell Inspiron 15 5000 Laptop Computer: Core i7-8550U, 128GB SSD + 1TB HDD, 8GB RAM, 15.6-inch Full HD Display, Backlit Keyboard, Windows 10 ',
        "630.99",
        'https://images-na.ssl-images-amazon.com/images/I/31ZSymDl-YL._AC_.jpg',
        'Dell',
        'Laptops',
        325,
        true,
        false),
    Product(
        'Business Laptop',
        'Business Laptop',
        'Latest Dell Vostro 14 5490 Business Laptop 14.0-Inch FHD 10th Gen Intel Core i7-10510U Up to 4.9 GHz 16GB DDR4 RAM 512GB M.2 PCIe SSD GeForce MX250 2GB GDDR5 GPU Fingerprint Reader Type-C Win10 Pro ',
        "1220.99",
        'https://images-na.ssl-images-amazon.com/images/I/71W690nu%2BXL._AC_SL1500_.jpg',
        'Dell',
        'Laptops',
        81,
        true,
        false),
    Product(
        'Latitude 5411 14" Notebook',
        'Latitude 5411 14" Notebook',
        'Latitude 5411 14" Notebook - Full HD - 1920 x 1080 - Core i7 i7-10850H 10th Gen 2.7GHz Hexa-core (6 Core) - 16GB RAM - 256GB SSD',
        "1220.99",
        'https://images-na.ssl-images-amazon.com/images/I/41OfZx5ex3L._AC_.jpg',
        'Dell',
        'Laptops',
        815,
        false,
        false),
    Product(
        'New Apple MacBook Pro with Apple',
        'New Apple MacBook Pro with Apple',
        'New Apple MacBook Pro with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD Storage) - Space Gray (Latest Model)',
        "800.99",
        'https://images-na.ssl-images-amazon.com/images/I/71an9eiBxpL._AC_SL1500_.jpg',
        'Apple',
        'Laptops',
        885,
        true,
        false),
    Product(
        'Apple MacBook Air',
        'Apple MacBook Air',
        'Apple MacBook Air 13.3" with Retina Display, 1.1GHz Quad-Core Intel Core i5, 16GB Memory, 256GB SSD, Space Gray (Early 2020)',
        "1220.99",
        'https://images-na.ssl-images-amazon.com/images/I/61wLbRLshAL._AC_SL1200_.jpg',
        'Apple',
        'Laptops',
        815,
        true,
        false),
    Product(
        'Apple MacBook Progag',
        'Apple MacBook Pro',
        'Apple MacBook Pro MF839LL/A 13.3in Laptop, Intel Core i5 2.7 GHz, 8GB Ram, 128GB SSD ',
        "700.89",
        'https://images-na.ssl-images-amazon.com/images/I/315CQ1KmlwL._AC_.jpg',
        'Apple',
        'Laptops',
        815,
        false,
        false),
    Product(
        'Apple MacBook Air',
        'Apple MacBook Air',
        'Apple MacBook Air 13.3" with Retina Display, 1.1GHz Quad-Core Intel Core i5, 8GB Memory, 256GB SSD, Silver (Early 2020)',
        "780.99",
        'https://images-na.ssl-images-amazon.com/images/I/61QRQHn0jJL._AC_SL1200_.jpg',
        'Apple',
        'Laptops',
        4455,
        true,
        false),
    Product(
        'Apple 16 MacBook Pro',
        'Apple 16 MacBook Pro',
        'Apple 16 MacBook Pro with Touch Bar, 9th-Gen 8-Core Intel i9 2.3GHz, 16GB RAM, 1TB SSD, AMD Radeon Pro 5500M 8GB, Space Gray, Late 2019 Z0Y0005J7 / Z0Y00006M',
        "800.99",
        'https://images-na.ssl-images-amazon.com/images/I/61qNHbx9LDL._AC_SL1200_.jpg',
        'Apple',
        'Laptops',
        885,
        false,
        false),
    Product(
        'Sofa Setttt',
        'Sofa Set',
        'Beverly Fine Funiture Sectional Sofa Set, 91A Black ',
        "650.99",
        'https://images-na.ssl-images-amazon.com/images/I/71P-p2sj6eL._AC_SL1500_.jpg',
        'No brand',
        'Furniture',
        91,
        true,
        false),
    Product(
        'Furniture Classroom with Teacher\'s',
        'Furniture Classroom with Teacher\'s',
        'L.O.L. Surprise! Furniture Classroom with Teacher\'s Pet & 10+ Surprises',
        "120.99",
        'https://images-na.ssl-images-amazon.com/images/I/71xytsyiHzL._AC_SL1500_.jpg',
        'No brand',
        'Furniture',
        815,
        false,
        false),
    Product(
        'Sofa Couch for Two People',
        'Sofa Couch for Two People',
        'Serta Copenhagen Sofa Couch for Two People, Pillowed Back Cushions and Rounded Arms, Durable Modern Upholstered Fabric, 61" Loveseat, Brown',
        "1220.99",
        'https://images-na.ssl-images-amazon.com/images/I/81sBT3voCPL._AC_SL1500_.jpg',
        'No brand',
        'Furniture',
        8100,
        true,
        false),
    Product(
        'Delta Children Plastic Toddler Bed',
        'Delta Children Plastic Toddler Bed',
        'Delta Children Plastic Toddler Bed, Disney Princess + Delta Children Twinkle Galaxy Dual Sided Recycled Fiber Core Toddler Mattress (Bundle)',
        "127.99",
        'https://images-na.ssl-images-amazon.com/images/I/71Rj3InxQlL._SL1500_.jpg',
        'No brand',
        'Furniture',
        9145,
        false,
        false),
    Product(
        'Outdoor Patio ',
        'Outdoor Patio ',
        'Recaceik 3 Pieces Outdoor Patio Furniture Sets Rattan Chair Wicker Set, with Cushions and Tempered Glass Tabletop, Outdoor Indoor Use Backyard Porch Garden-(Brown)',
        "1224.88",
        'https://images-na.ssl-images-amazon.com/images/I/81KabJxRvDL._AC_SL1500_.jpg',
        'No brand',
        'Furniture',
        25,
        true,
        false),
    Product(
        'Flash Furniture Nantucket 6 Piece',
        'Flash Furniture Nantucket 6 Piece',
        'Flash Furniture Nantucket 6 Piece Black Patio Garden Set with Table, Umbrella and 4 Folding Chairs',
        "1220.99",
        'https://images-na.ssl-images-amazon.com/images/I/81khjDZg5xL._AC_SL1500_.jpg',
        'No brand',
        'Furniture',
        651,
        false,
        false),
    Product(
        'Homall 4 Pieces Patio Outdoor Furniture Sets',
        'Homall 4 Pieces Patio Outdoor Furniture Sets',
        'Homall 4 Pieces Patio Outdoor Furniture Sets, All Weather PE Rattan Wicker Sectional Sofa Modern Manual Conversation Sets with Cushions and Glass Table for Lawn Backyard Garden Poolside（Beige）',
        "1220.99",
        'https://images-na.ssl-images-amazon.com/images/I/716-fllmUCL._AC_SL1500_.jpg',
        'No brand',
        'Furniture',
        594,
        true,
        false),
    Product(
        'Ashley Furniture Signature Design',
        'Ashley Furniture Signature Design',
        'Ashley Furniture Signature Design - Dolante Upholstered Bed - Queen Size - Complete Bed Set in a Box - Contemporary Style Checker - Gray',
        "300.99",
        'https://images-na.ssl-images-amazon.com/images/I/71QxxtRFFkL._AC_SL1232_.jpg',
        'No brand',
        'Furniture',
        78,
        false,
        false),
    Product(
        'Apple Watch Series 3',
        'Apple Watch Series 3',
        'Apple Watch Series 3 (GPS, 38mm) - Silver Aluminum Case with White Sport Band',
        "100.99",
        'https://images-na.ssl-images-amazon.com/images/I/71vCuRn4CkL._AC_SL1500_.jpg',
        'Apple',
        'Watch',
        156,
        true,
        false),
    Product(
        'Garmin Forerunner 45S',
        'Garmin Forerunner 45S',
        'Garmin Forerunner 45S, 39mm Easy-to-use GPS Running Watch with Coach Free Training Plan Support, Purple',
        "86.99",
        'https://images-na.ssl-images-amazon.com/images/I/51EWl3XsiYL._AC_SL1000_.jpg',
        'No brand',
        'Watch',
        142,
        false,
        false),
    Product(
        'Samsung Galaxy Watch Active 2',
        'Samsung Galaxy Watch Active 2',
        'Samsung Galaxy Watch Active 2 (40mm, GPS, Bluetooth) Smart Watch with Advanced Health Monitoring, Fitness Tracking , and Long Lasting Battery - Silver (US Version)',
        "300.99",
        'https://images-na.ssl-images-amazon.com/images/I/51bSW9gjoaL._AC_SL1024_.jpg',
        'Samsung',
        'Watch',
        167,
        false,
        false),
    Product(
        'Garmin vivoactive 4S',
        'Garmin vivoactive 4S',
        'Garmin vivoactive 4S, Smaller-Sized GPS Smartwatch, Features Music, Body Energy Monitoring, Animated Workouts, Pulse Ox Sensors, Rose Gold with White Band',
        "40.99",
        'https://images-na.ssl-images-amazon.com/images/I/51r2LCE3FLL._AC_SL1000_.jpg',
        'No brand',
        'Watch',
        659,
        false,
        false),
    Product(
        'Patek Philippe World',
        'Patek Philippe World',
        'Patek Philippe World Time Men\'s Watch Model 5131/1P-001',
        "20.99",
        'https://images-na.ssl-images-amazon.com/images/I/61MVdCYfbOL._AC_UX679_.jpg',
        'No brand',
        'Watch',
        98,
        false,
        false),
    Product(
        'Bell & Ross Men',
        'Bell & Ross Men',
        'Bell & Ross Men\'s BR-MNUTTOURB-PG Minuteur\' Black Carbon Fiber Dial 18K Rose Gold Tourbillon Watch',
        "33.99",
        'https://images-na.ssl-images-amazon.com/images/I/91M50AHRTKL._AC_UX569_.jpg',
        'No brand',
        'Watch',
        951,
        false,
        false),
    Product(
        'New Apple Watch Series',
        'New Apple Watch Series',
        'New Apple Watch Series 6 (GPS, 40mm) - Blue Aluminum Case with Deep Navy Sport Band ',
        "400.99",
        'https://images-na.ssl-images-amazon.com/images/I/71bf9IpGjtL._AC_SL1500_.jpg',
        'Apple',
        'Watch',
        951,
        false,
        false),
    Product(
        'New Apple Watch SE',
        'New Apple Watch SE',
        'New Apple Watch SE (GPS, 40mm) - Gold Aluminum Case with Pink Sand Sport Band',
        "200.99",
        'https://images-na.ssl-images-amazon.com/images/I/71JtUMDeBBL._AC_SL1500_.jpg',
        'Apple',
        'Watch',
        951,
        true,
        false),
    Product(
        'YAMAY Smart Watch 2020 Ver',
        'YAMAY Smart Watch 2020 Ver',
        'YAMAY Smart Watch 2020 Ver. Watch for Men Women Fitness Tracker Blood Pressure Monitor Blood Oxygen Meter Heart Rate Monitor IP68 Waterproof, Smartwatch Compatible with iPhone Samsung Android Phones',
        "183.99",
        'https://images-na.ssl-images-amazon.com/images/I/61gCtkVYb5L._AC_SL1000_.jpg',
        'Apple',
        'Watch',
        56,
        true,
        false),
    Product(
        'Samsung Galaxy Watch Active 23',
        'Samsung Galaxy Watch Active ',
        'Samsung Galaxy Watch Active (40MM, GPS, Bluetooth) Smart Watch with Fitness Tracking, and Sleep Analysis - Rose Gold  (US Version)',
        "150.99",
        'https://images-na.ssl-images-amazon.com/images/I/61n1c2vnPJL._AC_SL1500_.jpg',
        'Samsung',
        'Watch',
        78,
        true,
        false),
    Product(
        'Samsung Galaxy Watch 3',
        'Samsung Galaxy Watch 3',
        'Samsung Galaxy Watch 3 (41mm, GPS, Bluetooth) Smart Watch with Advanced Health monitoring, Fitness Tracking , and Long lasting Battery - Mystic Silver (US Version)',
        "184.99",
        'https://images-na.ssl-images-amazon.com/images/I/81Iu41zFPwL._AC_SL1500_.jpg',
        'Samsung',
        'Watch',
        9598,
        true,
        false),
    Product(
        'Samsung Galaxy Watch Active2 ',
        'Samsung Galaxy Watch Active2 ',
        'Samsung Galaxy Watch Active2 (Silicon Strap + Aluminum Bezel) Bluetooth - International (Aqua Black, R820-44mm)',
        "120.99",
        'https://images-na.ssl-images-amazon.com/images/I/518qjbbuGZL._AC_SL1000_.jpg',
        'Samsung',
        'Watch',
        951,
        true,
        false),
    Product(
        'Huawei Watch 2 Sport Smartwatch',
        'Huawei Watch 2 Sport Smartwatch',
        'Huawei Watch 2 Sport Smartwatch - Ceramic Bezel - Carbon Black Strap (US Warranty)',
        "180.99",
        'https://images-na.ssl-images-amazon.com/images/I/71yPa1g4gWL._AC_SL1500_.jpg',
        'Huawei',
        'Watch',
        951,
        true,
        false),
  ];

  List<Product> get products => _products;

  List<Product> findCategoryByName(String categoryName) {
    List<Product> _categoryList = _products
        .where((element) => element.productCategoryName
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();

    return _categoryList;
  }

  List<Product> findCategoryByBrand(String brandName) {
    List<Product> _brandProductList = _products
        .where((element) =>
            element.brand.toLowerCase().contains(brandName.toLowerCase()))
        .toList();

    return _brandProductList;
  }

  Product findById(String id) {
    return _products.firstWhere((element) => element.id == id);
  }

  List<Product> get popularProducts {
    return _products.where((element) => element.isPopular).toList();
  }
  
  List<Product> searchQuery(String searchText) {
    List<Product> _searchList = _products
        .where((element) =>
            element.title.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    return _searchList;
  }
}
