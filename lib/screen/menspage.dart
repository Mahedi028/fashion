import 'package:fashion/screen/categoriespage.dart';
import 'package:fashion/tabContent/pantpage.dart';
import 'package:fashion/tabContent/punjabi.dart';
import 'package:fashion/tabContent/shirtpage.dart';
import 'package:fashion/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mensPage extends StatefulWidget {
  @override
  _mensPageState createState() => _mensPageState();
}


class _mensPageState extends State<mensPage> with 
TickerProviderStateMixin{
  late TabController _tabController;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _tabController=TabController(
      length: 3, vsync: this, initialIndex: 0,
      ); 
      _animationController=AnimationController.unbounded(
        vsync: this,
        duration: Duration(
          milliseconds:2500,
        )
        );
        
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  // @override
  // void onInit() {
  //   super.onInit();
  //   _animationController=AnimationController(
  //     vsync:this,
  //     duration: Duration(
  //       microseconds: 2500
  //     )
  //     );
  // }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/lib/screen/categoriespage.dart':(context)=>categoriesPage()
      },
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Icon(
                Icons.menu,
                size: 20,
                color: Colors.grey,
                ),
              SizedBox(
                width: 300,
              ),
              Icon(
                Icons.search,
                size: 20,
                color: Colors.grey,
                ),
              Icon(
                Icons.shopping_cart_rounded,
                size: 20,
                color: Colors.grey,
                )
            ],
          ),
          bottom: TabBar(
            controller: _tabController,
            // labelColor: Colors.grey,
            unselectedLabelColor: Colors.black,
            physics: BouncingScrollPhysics(),
            isScrollable: true,
            // indicatorPadding: EdgeInsets.all(5.0),
            indicator: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.0)
            ),
            tabs: [
              Tab(text: 'Shirt'),
              Tab(text: 'Pant'),
              Tab(text: 'Punjabi'),
            ],

          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            shirtPage(),
            pantPage(),
            punjabiPage(),
        ],
        ),
      ),
    );
  }
}