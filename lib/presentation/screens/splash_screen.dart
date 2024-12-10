import 'package:car_rental_app/models/features_model.dart';
import 'package:car_rental_app/presentation/screens/detail_screen.dart';
import 'package:car_rental_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                ShowUpAnimation(
                  curve: Curves.easeIn,
                  direction: Direction.horizontal,
                  offset: 0.10,
                  delayStart: Duration(seconds: 0),
                  animationDuration: Duration(seconds: 1),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Image.asset('assets/splash_image.png'),
                  ),
                ),
                Positioned(
                  bottom: -0,
                  left: 20,
                  child: ShowUpAnimation(
                      curve: Curves.bounceIn,
                      direction: Direction.horizontal,
                      offset: 0.10,
                      delayStart: Duration(seconds: 1),
                      animationDuration: Duration(seconds: 1),
                      child: Text(
                        "Premium cars.\nEnjoy the luxury",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 35),
                      )),
                ),
              ]),
              ShowUpAnimation(
                curve: Curves.bounceIn,
                direction: Direction.horizontal,
                offset: 0.10,
                delayStart: Duration(seconds: 2),
                animationDuration: Duration(seconds: 1),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                      'Premium and prestige car daily rental. Experience the thrill at a lower price',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey)),
                ),
              ),
            ],
          ),
          ShowUpAnimation(
            curve: Curves.bounceIn,
            direction: Direction.horizontal,
            offset: 0.10,
            delayStart: Duration(seconds: 3),
            animationDuration: Duration(seconds: 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 54,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("Let's gooo",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))),
            ),
          ),
        ],
      ),
    );
  }
}
