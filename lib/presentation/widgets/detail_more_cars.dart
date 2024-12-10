import 'package:car_rental_app/models/features_model.dart';
import 'package:car_rental_app/presentation/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

Widget detailMoreCars(context) {
  return Column(children: [
    const SizedBox(height: 10),
    Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 28),
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width,
        height: 234,
        decoration: ShapeDecoration(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child:  Column(
            children: [
              const SizedBox(height: 17),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 22),
                  Text(
                    'More Cars',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.getFont('Barlow').copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 22),
                  Text(
                    'Corolla Cross',
                    style: GoogleFonts.getFont('Barlow').copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/km.svg", colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),
                    const SizedBox(width: 5),
                    Text(
                      "> 870km",
                      style: GoogleFonts.getFont('Barlow').copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 17),
                    SvgPicture.asset("assets/gas.svg",colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                    const SizedBox(width: 5),
                    Text(
                      "50L",
                      style: GoogleFonts.getFont('Barlow').copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    FloatingActionButton(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: Icon(Icons.arrow_forward),
                      ),
                  ],
                  
                ),
              ),
            ],
          ),
        ),
      ),
    const SizedBox(height: 22)
  ]);
}