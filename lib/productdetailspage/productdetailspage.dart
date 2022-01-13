import 'package:fashion/screen/menspage.dart';
import 'package:fashion/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productDetailsPage extends StatelessWidget {
  final int id;
  productDetailsPage({
    required this.id,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           IconButton(
             color: Colors.grey,
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>mensPage()));
             }, 
             icon: Icon(Icons.arrow_back_sharp)
             ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
        child: Column(
          children: [
            Text(
              'black Shirt',
              style: TextStyle(
                fontSize: 30,
              ),
              ),
            SizedBox(height: 10,),
            Text(
              '39.39',
              style: TextStyle(
                fontSize: 30,
              ),
              ),
               productCardPage(
            productImage: Hero(
              tag: 'product', 
              child: Image.asset(
                'assets/shirts/img-${id}.jpg',
                width: 400,
                height: 320,
                fit: BoxFit.cover,
                scale: 1,
                ),
              ),
            
              productTitle: Text(
                'T-Shirt-01',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
                ),
              productPrice: Text(
                '300',style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                )
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: 
              Align(
                alignment: Alignment.topLeft,
                child:Text(
                'Size',
                style: TextStyle(
                  fontSize: 20,
                ),
                ) ,
              ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                          child:Text('S'),
                        )
                    ),
                    Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                          child:Text('L'),
                        )
                    ),
                    Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                          child:Text('Xl'),
                        )
                    ),
                    Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                          child:Text('Xl'),
                        )
                    )
                  ],)
          ],
        ),
      ), 
        )
     
    );
        
     
  }
}