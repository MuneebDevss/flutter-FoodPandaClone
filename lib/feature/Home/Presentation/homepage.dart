import 'package:animation_starter_code/feature/Home/Widgets/container.dart';
import 'package:animation_starter_code/feature/Home/Widgets/cuisines.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/daily_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  static const double leftPadding=15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(226, 27, 112, 1),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hilton Boys Hostel',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: 'assets/fonts/trebucit.tff')),
              Text('Islamabad',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'assets/fonts/trebucit.tff')),
            ],
          ),
          actions: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 25,
              height: 25,
              child: ClipRRect(
                  child: Image.asset(
                'assets/icons/unfilledHeart.png',
                fit: BoxFit.cover,
                width: 10,
                height: 10,
              )),
            ),
            const SizedBox(
              width: 10,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              color: Colors.transparent,
              width: 40,
              height: 40,
              child: ClipRRect(
                  child: Image.asset(
                'assets/icons/Shopping.png',
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              )),
            ),
            const SizedBox(
              width: 20,
            ),
          ]),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xFFF2F2F2),

                border: Border.fromBorderSide(BorderSide.none),
              ),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    hintStyle: GoogleFonts.robotoFlex(),
                    hintText: "Search for Shops and Restaurants",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(225, 200, 198, 0.5),
              ),
              padding: const EdgeInsets.all(13),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        container(120, "Food delivery", "Order Food you\nlove",
                            'assets/icons/deliver.png'),
                        container(
                          120,
                          "Pick-Up",
                          "Self Collect for\n50% off",
                          'assets/icons/handOver.png',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        container(90, "Catering", "Plan events with\nease",
                            'assets/icons/catering.png'),
                        container(90, "ShopyGo", "Send Parcels in \na tap",
                            'assets/icons/parcel.png'),
                      ],
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: leftPadding, top: 13),
              child: Text(
                "Daily Deals",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            //Lower
            Padding(
              padding: const EdgeInsets.only(left: leftPadding-1, top: 14),
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.manual,
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    dealsContainer('https://img.freepik.com/premium-psd/special-healthy-breakfast-social-media-facebook-instagram-post-design-template_565857-261.jpg?w=1060'),
                    const SizedBox(width: 10,),

                    dealsContainer('https://img.freepik.com/free-psd/delicious-food-asian-social-media-template_505751-2998.jpg?w=1060&t=st=1719999771~exp=1720000371~hmac=5f26a429c93f0e670c50d969573964124f872f6169c5b70a1c526f1b96239be3'),
                    const SizedBox(width: 10,),
                    dealsContainer('https://img.freepik.com/free-psd/burger-menu-food-template-social-media-promotion_17005-1297.jpg?w=1060&t=st=1719999841~exp=1720000441~hmac=2bec2340e3bedad882807a1982c3b2495dd6af0101dab7cdbad6fc1dfdfbed77'),
                    const SizedBox(width: 10,),
                    dealsContainer('https://img.freepik.com/free-psd/delicous-asian-food-social-media-template_505751-2981.jpg?w=1060&t=st=1720000083~exp=1720000683~hmac=58437a21386c0857d90933d50a087373c09151834c1f191aee835ec90e010c3f'),
                    const SizedBox(width: 10,),
                    dealsContainer('https://img.freepik.com/free-vector/american-food-square-flyer-template-with-french-fries_23-2148858243.jpg?w=1060&t=st=1719999950~exp=1720000550~hmac=54442dc3984214b570e57ad930fcd11113e750c5ddb415fa39ec065acfb57c52'),
                    const SizedBox(width: 10,),
                    dealsContainer('https://img.freepik.com/free-psd/food-social-media-banner-post-template_202595-358.jpg?w=1060&t=st=1719999884~exp=1720000484~hmac=5ce18d9e21a28f803923b4c228fa6ac743ab452a4b5809817497f0c38ad3b5d1'),
                    const SizedBox(width: 10,),
                    dealsContainer('https://img.freepik.com/premium-psd/special-breakfast-social-media-instagram-post-design_565857-440.jpg?w=1060'),
                    const SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: leftPadding, top: 13),
              child: Text(
                "Cuisines",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: leftPadding-1, top: 14),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                    children: [

                      cuisines('assets/icons/Burger.png',"Burger"),
                      const SizedBox(width: 10,),
                      cuisines('assets/icons/Paratha.png',"Paratha"),
                      const SizedBox(width: 10,),
                      cuisines('assets/icons/FriedRice.png',"FriedRice"),

                      const SizedBox(width: 10,),
                      cuisines('assets/icons/Pullao.png',"Pullao"),
                      const SizedBox(width: 10,),
                      cuisines('assets/icons/BBQ.png',"BBQ"),

                      const SizedBox(width: 10,),
                    ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        cuisines('assets/icons/Briyani.png',"Briyani"),
                        const SizedBox(width: 10,),
                        cuisines('assets/icons/Pizza.png',"Pizza"),
                        const SizedBox(width: 10,),
                        cuisines('assets/icons/Pasta.png',"Pasta"),
                        const SizedBox(width: 10,),
                        cuisines('assets/icons/Shawarma.png',"Shawarma"),
                        const SizedBox(width: 10,),
                        cuisines('assets/icons/Shake.png',"Shake"),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
