// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class coming_soon extends StatefulWidget {
  const coming_soon({Key? key}) : super(key: key);

  @override
  State<coming_soon> createState() => _coming_soonState();
}

class _coming_soonState extends State<coming_soon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 28, 73, 149),
      child: Center(
        child: Image.asset(
          "assets/imgs/cs.jpg",
        ),
      ),
    );
  }
}
