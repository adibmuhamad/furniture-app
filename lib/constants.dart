import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

List<String> categories = ["Bed", "Lamp", "Chair", "Desk"];

List<Map<String, dynamic>> info = [
  { "image": "assets/images/look_around.png",
    "value": "Look around an open area with your device it recognizes a flat surface"
  },
  { "image": "assets/images/tap.png",
    "value": "Tap colored prints to have your furniture at the selected position"
  },
  { "image": "assets/images/warning.png",
    "value": "While using AR mode, make sure you're in a safe location"
  },
];

List<Map<String, dynamic>> products = [
  {
    "productName": "Modern Brown Bed",
    "category": 0,
    "price": "\$235.00",
    "pictureLink": "https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c260.png",
    "arObject" : "",
    "details" : [
      {
        "type": "Stok",
        "value": "15",
      },
      {
        "type": "Merk",
        "value": "No",
      },
      {
        "type": "Color",
        "value": "Brown",
      },
      {
        "type": "",
        "value": "Jakarta",
      },
    ]
  },
  {
    "productName": "Modern Wooden Bed",
    "category": 0,
    "price": "\$106.00",
    "pictureLink": "https://www.stickpng.com/assets/images/58e90049eb97430e819064d4.png",
    "arObject" : "",
    "details" : [
      {
        "type": "Stok",
        "value": "40",
      },
      {
        "type": "Merk",
        "value": "No",
      },
      {
        "type": "Color",
        "value": "White",
      },
      {
        "type": "",
        "value": "Jakarta",
      },
    ]
  },
  {
    "productName": "Metal Frame Canopy Bed",
    "category": 0,
    "price": "\$96.00",
    "pictureLink": "https://www.stickpng.com/assets/images/5a0ad0b15a997e1c2cea10e4.png",
    "arObject" : "",
    "details" : [
      {
        "type": "Stok",
        "value": "10",
      },
      {
        "type": "Merk",
        "value": "No",
      },
      {
        "type": "Color",
        "value": "White",
      },
      {
        "type": "",
        "value": "Medan",
      },
    ]
  },
  {
    "productName": "Chalie Lamp",
    "category": 1,
    "price": "\$55.00",
    "pictureLink": "https://i.pinimg.com/originals/10/bd/f7/10bdf78031352956b3bf2ac04fdd864c.png",
    "arObject" : "",
    "details" : [
      {
        "type": "Stok",
        "value": "62",
      },
      {
        "type": "Merk",
        "value": "No",
      },
      {
        "type": "Color",
        "value": "White",
      },
      {
        "type": "",
        "value": "Jakarta",
      },
    ]
  },
  {
    "productName": "Bar Chair",
    "category": 2,
    "price": "\$21.00",
    "pictureLink": "https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c26b.png",
    "arObject" : "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/SheenChair/glTF/SheenChair.gltf",
    "details" : [
      {
        "type": "Stok",
        "value": "5",
      },
      {
        "type": "Merk",
        "value": "No",
      },
      {
        "type": "Color",
        "value": "Black",
      },
      {
        "type": "",
        "value": "Banten",
      },
    ]
  },
];

List icons = [
  Icon(
    Icons.shopping_cart,
    color: accentColor,
  ),
  Icon(
    Icons.description,
    color: accentColor,
  ),
  Icon(
    Icons.color_lens,
    color: accentColor,
  ),
  Icon(
    Icons.place,
    color: accentColor,
  ),
];