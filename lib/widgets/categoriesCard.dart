import 'package:fashion/widgets/productCard.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesCard extends StatelessWidget {
  Widget categoriesImage;
  Widget categoriesName;
 
 CategoriesCard({
   required this.categoriesImage,
   required this.categoriesName
 });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child:Wrap(
        children: [
            Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          categoriesImage,
          categoriesName
        ],
      ), 
      )
        ],
      )
    );
  }
}