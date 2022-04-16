// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, avoid_print, unused_import,prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salem_bazaar/pages/coming_soon.dart';
import 'package:salem_bazaar/widgets/individual_card.dart';
import 'package:salem_bazaar/widgets/info_card.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 70,
                    color: Colors.white,
                  ),
                  Text(
                    "Ankit Yadav",
                    style: GoogleFonts.robotoMono(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 0.7,
                    ),
                  ),
                  Text(
                    "9076653435",
                    style: GoogleFonts.robotoMono(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 219, 219, 219),
                      fontSize: 17,
                      letterSpacing: 0.7,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          "Info",
          style: GoogleFonts.robotoMono(
            textStyle: Theme.of(context).textTheme.bodyLarge,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 0.7,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const coming_soon(),
                ),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(
          5,
        ),
        child: Column(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                child: ImageSlideshow(
                  width: double.infinity,
                  height: 210,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  children: [
                    Image.asset(
                      'assets/imgs/s1.jfif',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/imgs/s2.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/imgs/s3.jfif',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/imgs/s4.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/imgs/s5.jfif',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/imgs/s6.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                  onPageChanged: (value) {},
                  autoPlayInterval: 5000,
                  isLoop: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.1,
                ),
                children: info_list
                    .map(
                      (e) => individual_info_card(
                        e.name,
                        e.img,
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              label: 'Offers',
              icon: Icon(Icons.local_offer_sharp),
            ),
            BottomNavigationBarItem(
              label: 'Market',
              icon: Icon(Icons.local_grocery_store),
            ),
            BottomNavigationBarItem(
              label: 'News',
              icon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              label: 'My City',
              icon: Icon(Icons.location_city),
            ),
          ],
        ),
      ),
    );
  }
}
