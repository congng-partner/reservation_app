import 'package:flutter/material.dart';
import 'package:reservation_app/pages/home/components/banner_carousel.dart';
import 'package:reservation_app/pages/home/components/sections/best_seller_section.dart';
import 'package:reservation_app/pages/home/components/home_appbar.dart';
import 'package:reservation_app/pages/home/components/sections/happy_deals_section.dart';
import 'package:reservation_app/pages/home/components/sections/our_restaurant_section.dart';
import 'package:reservation_app/utils/app_distance.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Please stay here',
        )));
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF6EFE8),
        appBar: HomeAppbar(),
        drawer: Drawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset('assets/images/icons/ic_search.png'),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BannerCarousel(),
                SizedBox(
                  height: 6,
                ),
                BestSellerSection(),
                SizedBox(
                  height: Dt.d_18,
                ),
                OurRestaurantSection(),
                SizedBox(
                  height: Dt.d_18,
                ),
                HappyDealsSection(),
                SizedBox(
                  height: Dt.d_18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
