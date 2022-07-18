import 'package:flutter/material.dart';
import '../classes/board_item.dart';

Widget boardCard({required BoardItem item}) => SizedBox(
  width: 250,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AspectRatio(
        aspectRatio: 4/3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              item.urlImage,
              fit: BoxFit.cover
          ),
        ),
      ), const SizedBox(height: 11),
      Text(
          item.title,
          style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 17.0,
              letterSpacing: 0.03
          )
      ),const SizedBox(height: 13),
      Text(
        item.description,
        style: const TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            letterSpacing: 0.03
        ),),const SizedBox(height: 10),
      Text(
        item.date,
        style: const TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            letterSpacing: 0.03,
            color: Color(0xFF979799)
        ),
      )
    ],
  ),
);