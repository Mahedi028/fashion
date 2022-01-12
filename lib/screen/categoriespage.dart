import 'package:fashion/widgets/categoriesCard.dart';
import 'package:flutter/material.dart';

import 'menspage.dart';


class categoriesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                Text(
                  'Categories',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),
              ) , 
              Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        body:Center(
          child:GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              ),
              padding: EdgeInsets.all(5.0),
            children: [
              //-----1st starts--------//
                  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>mensPage()));
              },
              child: Center( 
                child: CategoriesCard(
            categoriesImage: Image.asset(
              'assets/categoriesImage/men.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,

              ),
            categoriesName: Text('mens'),
          ), 
                ),
            ),
            //-----1st ends---//
            //-----2nd starts---//
                  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>mensPage()));
              },
              child: Center(child: CategoriesCard(
            categoriesImage: Image.asset(
              'assets/categoriesImage/women.jpg',
              width: 300,
              height: 300,
              fit:BoxFit.cover
              ),
            categoriesName: Text('womens'),
          ), 
              )
            ),
            //----2nd ends--------//
            //-----3rd starts-----------//
                  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>mensPage()));
                
              },
              child:Center(
              child: CategoriesCard(
            categoriesImage: Image.asset(
              'assets/categoriesImage/child.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,

              ),
            categoriesName: Text('kids'),
          ), 
              ),
            ),
            //----------3rd ends---------//
            //----------4th starts--------//
                  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>mensPage()));
                
              },
              child:Center(
              child: CategoriesCard(
            categoriesImage: Image.asset('assets/categoriesImage/men.jpg'),
            categoriesName: Text('Shoe'),
          ), 
              )
            ),
            //--------------4th ends------------------//


            ],
            ) ,
        //   child: Padding(
        //     padding:EdgeInsets.all(5.0) ,
        //     child: Wrap(
        //       spacing: 25.0,
        //       runSpacing: 15.0,
        //   children: [
          //   GestureDetector(
          //     onTap: (){
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=>mensPage()));
                
          //     },
          //     child: CategoriesCard(
          //   categoriesImage: Image.network('https://png.pngtree.com/png-vector/20190420/ourlarge/pngtree-vector-business-man-icon-png-image_966609.jpg'),
          //   categoriesName: 'Mens',
          // ), 
          //   ),
        //     GestureDetector(
        //       onTap: (){

        //       },
        //       child:CategoriesCard(
        //  categoriesImage: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHbR4PkMWk1-B8uPjrt8JF4gGEYS2wcqr_G9yomn2xGumCXU62EFvjCpbyAQmjFHx2J-U&usqp=CAU'),
        //     categoriesName: 'Women',
        //   ),
        //     ),
        //     GestureDetector(
        //       onTap: (){

        //       },
        //       child:   CategoriesCard(
        //  categoriesImage: Image.network('assets/images/shirts.png'),
        //     categoriesName: 'Kids',
        //   ),
        //     ),
        //     GestureDetector(
        //       onTap: (){

        //       },
        //       child:   CategoriesCard(
        //  categoriesImage: Image.network('assets/images/shirts.png'),
        //     categoriesName: 'Shoe',
        //   ), 
        //     )
        //   ],
        // ),
        //   )
        )  
      ),
    );
  }
}
