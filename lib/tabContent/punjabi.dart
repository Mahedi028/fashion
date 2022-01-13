import 'package:fashion/productdetailspage/productdetailspage.dart';
import 'package:fashion/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class punjabiPage extends StatelessWidget {
  @override
  
    Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Men'),
              background: Image.asset(
                  'assets/shirts/img-6.jpg',
                width: 400,
                height: 600,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(

          ),
          SliverList(
              delegate:SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return productCardPage(
                        productImage: GestureDetector(
                          child: Image.asset(
                              'assets/punjabi/pic-${index}.jpg',
                            width: 300,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>productDetailsPage(id: index,)));
                          },
                        ), 
                        productTitle: Text(
                            'Punjabi',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          )
                        ),
                        productPrice: Text(
                            'Tk-300',
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            )
                        ),
                    );
                  },
                childCount: 8,
              ),


          ),

        ],
      ),
    );
  }
}