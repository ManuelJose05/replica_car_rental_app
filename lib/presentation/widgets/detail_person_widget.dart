import 'package:flutter/material.dart';

Widget detailPerson(BuildContext context) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 25),
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width / 2.5,
        height: 320 / 2,
        decoration: ShapeDecoration(
          color: const Color(0xFFF3F3F3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/mahdi.jpg'),
        ),
        SizedBox(height: 5,),
        Text('Manuel José', style: Theme.of(context).textTheme.titleMedium,),
        Text('\$4000.0', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        ),
     
        Container(
        margin: EdgeInsets.only(left: 25),
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width / 2.5,
        height: 320 / 2,
        decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage('assets/Maps.png'), fit: BoxFit.cover),
          color: const Color(0xFFF3F3F3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        )),
    ],
  );
}