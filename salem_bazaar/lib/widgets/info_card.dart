// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, camel_case_types, unused_import

import 'package:flutter/material.dart';

class info_card {
  final String name;
  final String img;
  // final String path;

  const info_card({
    required this.name,
    required this.img,
    // required this.path,
  });
}

List<info_card> info_list = [
  info_card(
    name: "Shops",
    img: "assets/imgs/info_page/info_shops.jpeg",
    // path: "",
  ),
  info_card(
    name: "Services",
    img: "assets/imgs/info_page/info_services.jpeg",
    // path: "",
  ),
  info_card(
    name: "Rental",
    img: "assets/imgs/info_page/info_rental.jpeg",
    // path: "",
  ),
  info_card(
    name: "Foods",
    img: "assets/imgs/info_page/info_places.jpeg",
    // path: "",
  ),
  info_card(
    name: "Medical",
    img: "assets/imgs/info_page/info_med.jpeg",
    // path: "",
  ),
  info_card(
    name: "Places",
    img: "assets/imgs/info_page/info_places.jpeg",
    // path: "",
  ),
  info_card(
    name: "Sports",
    img: "assets/imgs/info_page/info_sports.jpeg",
    // path: "",
  ),
  info_card(
    name: "Education",
    img: "assets/imgs/info_page/info_edu.jpeg",
    // path: "",
  ),
  info_card(
    name: "Stay",
    img: "assets/imgs/info_page/info_stay.jpeg",
    // path: "",
  ),
  info_card(
    name: "Blood",
    img: "assets/imgs/info_page/info_blood.jpeg",
    // path: "",
  ),
  info_card(
    name: "Jobs",
    img: "assets/imgs/info_page/info_jobs.jpeg",
    // path: "",
  ),
];
