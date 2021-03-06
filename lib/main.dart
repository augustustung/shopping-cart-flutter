import 'package:flutter/material.dart';
import 'package:myapp/const/theme.dart';
import 'package:myapp/provider/cart_provider.dart';
import 'package:myapp/provider/darkTheme.dart';
import 'package:myapp/provider/favorite_provider.dart';
import 'package:myapp/provider/products.dart';
import 'package:myapp/screens/Feed/category_feed.dart';
import 'package:myapp/screens/bottom_bar.dart';
import 'package:myapp/screens/cart.dart';
import 'package:myapp/screens/feeds.dart';
import 'package:myapp/screens/home/navigation_rail/brand_products.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/login/loginscreen.dart';
import 'package:myapp/screens/login/registerscreen.dart';
import 'package:myapp/screens/user.dart';
import 'package:provider/provider.dart';
import 'screens/Feed/product_detail.dart';
import 'screens/user/wish_list.dart/wish_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider darkThemeProvider = DarkThemeProvider();

  _getCurrentTheme() async {
    darkThemeProvider.darkTheme =
        await darkThemeProvider.darkThemePreference.getTheme();
  }

  @override
  void initState() {
    super.initState();
    _getCurrentTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => darkThemeProvider),
        ChangeNotifierProvider(create: (_) => ProductsProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider())
      ],
      builder: (context, child) =>
          Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter Demo App",
          theme: Styles.themeData(darkThemeProvider.darkTheme, context),
          home: MainScreen(),
          routes: <String, WidgetBuilder>{
            "/login": (BuildContext context) => LoginScreen(),
            "/register": (BuildContext context) => RegisterScreen(),
            "/home": (BuildContext context) => BottomBar(),
            "/user": (BuildContext context) => UserInfo(),
            "/brandItem": (BuildContext context) => BrandProducts(),
            "/feed": (BuildContext context) => Feed(),
            "/cart": (BuildContext context) => Cart(),
            "/wishlist": (BuildContext context) => WishList(),
            "/productdetail": (BuildContext context) => ProductDetail(),
            "/categoryfeed": (BuildContext context) => CategoryFeed()
          },
        );
      }),
    );
  }
}
