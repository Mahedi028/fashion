import 'package:flutter/material.dart';


class productCardPage extends StatelessWidget {
  Widget productImage;
  Widget productTitle;
  Widget productPrice;

  productCardPage({
    required this.productImage,
    required this.productTitle,
    required this.productPrice
  });
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child:Card(
      color: Colors.white,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Container(
        width: 280,
        height: 420,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: productImage,
            ),
            SizedBox(
              height: 5,),
            productTitle,
            productPrice
          ],
        ),
      ),
    ),
      );
  
}
}