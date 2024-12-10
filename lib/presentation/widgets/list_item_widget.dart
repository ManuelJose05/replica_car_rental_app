import 'package:car_rental_app/models/features_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget ListItem(context, FeaturesModel data) {
  return Container(
    width: 136,
    height: 89,
    margin: EdgeInsets.only(right: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey.shade300,width: 1)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10,left: 9),
          child: SvgPicture.asset(data.icon, width: 32,height: 32 ,
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),),
        ) ,
        Padding(
          padding: EdgeInsets.only(left: 14,top: 6,bottom: 4),
          child: Text(data.title, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontSize: 14),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(data.description, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Color(0xFF898A8D),fontSize: 8)),
          )
      ],
    ),
  );
}