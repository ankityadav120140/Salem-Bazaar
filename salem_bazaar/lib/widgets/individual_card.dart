// ignore_for_file: camel_case_types, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salem_bazaar/pages/coming_soon.dart';

class individual_info_card extends StatefulWidget {
  final String name;
  final String img;
  // final String path;

  const individual_info_card(
    this.name,
    this.img,
    // this.path,
  );

  @override
  State<individual_info_card> createState() => _individual_info_cardState();
}

class _individual_info_cardState extends State<individual_info_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => coming_soon(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 197, 197, 197),
                    blurRadius: 4,
                    offset: Offset(1, 1), // Shadow position
                  ),
                ],
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.27,
                // decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 1,
                      ),
                      child: CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage(widget.img),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.013,
                    ),
                    Container(
                      child: Text(
                        widget.name,
                        style: GoogleFonts.robotoMono(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                        // height: MediaQuery.of(context).size.height * 0.01,
                        ),
                    // Expanded(child: Container()),
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
