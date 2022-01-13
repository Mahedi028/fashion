import 'package:fashion/productdetailspage/productdetailspage.dart';
import 'package:fashion/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class shirtPage extends StatefulWidget {
  @override
  _shirtPageState createState() => _shirtPageState();
}
class _shirtPageState extends State<shirtPage> {
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
                              'assets/shirts/img-${index}.jpg',
                            width: 300,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>productDetailsPage(id: index,)));
                          },
                        ), 
                        productTitle: ListTile(
                          title: Text(
                            'Polo T-shirt',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),
                          textAlign: TextAlign.center,
                        ),
                        ), 
                        productPrice: 
                          ListTile(
                          title:Text(
                            'Tk-300',
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                            textAlign: TextAlign.center,
                        ), 
                          ) ,
                    );
                  },
                childCount: 8,
              ),


          ),

        ],
      ),
    );
    // return Column(
    //   children: [
    //       productCardPage(
    //         productImage: GestureDetector(
    //           onTap: (){
    //             Navigator.push(context, MaterialPageRoute(builder: (context)=>productDetailsPage()));
    //           },
    //           child:  Image.asset(
    //             'assets/shirts/img-1.jpg',
    //             width: 280,
    //             height: 320,
    //             fit: BoxFit.cover,
    //             scale: 2,
    //             ),
    //         ),
    //
    //           productTitle: Text(
    //             'T-Shirt-01',
    //             style: GoogleFonts.poppins(
    //               fontSize: 15,
    //             ),
    //             ),
    //           productPrice: Text(
    //             '300',style: GoogleFonts.poppins(
    //               fontSize: 15,
    //               fontWeight: FontWeight.bold
    //             ),
    //             )
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Text(
    //                 'Most Popular',
    //                 style: GoogleFonts.poppins(
    //                   fontSize:20,
    //                   fontWeight: FontWeight.bold
    //                 ),
    //                 ),
    //                 SizedBox(width: 150,),
    //               Text(
    //                 'See all',
    //                 style: GoogleFonts.poppins(
    //                   fontSize:15,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.grey
    //                 ),
    //                 ),
    //             ],
    //           )
    //   ],
    // );
  }
}