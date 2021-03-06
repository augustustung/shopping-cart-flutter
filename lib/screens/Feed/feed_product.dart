import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/product_model.dart';
import 'package:myapp/screens/Feed/product_dialog.dart';
import 'package:provider/provider.dart';

class FeedProducts extends StatefulWidget {
  @override
  _FeedProductsState createState() => _FeedProductsState();
}

class _FeedProductsState extends State<FeedProducts> {
  @override
  Widget build(BuildContext context) {
    final productsAttributes = Provider.of<Product>(context);
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed("/productdetail", arguments: productsAttributes.id),
      child: Container(
        width: 190.0,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  constraints: BoxConstraints(
                      minHeight: 100,
                      maxHeight: MediaQuery.of(context).size.height * 0.3),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        image: DecorationImage(
                            image: NetworkImage(productsAttributes.imgUrl),
                            fit: BoxFit.fill)),
                  ),
                ),
                Badge(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  shape: BadgeShape.square,
                  animationType: BadgeAnimationType.slide,
                  badgeContent: Text(
                    "NEW",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 6.0),
              margin: const EdgeInsets.only(left: 6.0, right: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 8.0),
                  Text(
                    productsAttributes.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text("\$ ${productsAttributes.price}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 19.0, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Quantity: ${productsAttributes.quantity} left",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                            onTap: () async {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      FeedDiaLog(productsAttributes.id));
                            },
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                            )),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
