import 'package:car_rental_app/models/features_model.dart';
import 'package:car_rental_app/presentation/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(this.data);
  final List<FeaturesModel> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 480,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/map2.png'),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
              top: 35,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, size: 30))),
          Positioned(
              bottom: 25,
              child: ShowUpAnimation(
                offset: 0.9,
                direction: Direction.vertical,
                animationDuration: Duration(seconds: 1),
                curve: Curves.linear,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 376,
                  decoration: ShapeDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      )),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 100),
                        height: 276,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 30, top: 16, bottom: 14),
                              child: Text('Features',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontSize: 22, color: Colors.black)),
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 28, top: 6, bottom: 20),
                                width: MediaQuery.of(context).size.width,
                                height: 89,
                                child: ListView.builder(
                                  itemCount: data.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return ListItem(context, data[index]);
                                  },
                                )),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '\$45',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    color: Colors.black,
                                                    fontSize: 32,
                                                    fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: ',00',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    color: Colors.black,
                                                    fontSize: 32)),
                                        TextSpan(
                                            text: '/day',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    color: Colors.black,
                                                    fontSize: 20)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                      width: 147,
                                      height: 54,
                                      decoration: ShapeDecoration(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Book Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Barlow',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              left: 150,
              bottom: 195,
              child: ShowUpAnimation(
                delayStart: Duration(seconds: 1),
                offset: 0.1,
                curve: Curves.bounceIn,
                direction: Direction.vertical,
                  child: Image.asset(
                'assets/car_detail.png',
                width: 250,
                height: 240,
              ))),
          Positioned(
              left: 30,
              bottom: 340,
              child: Text('Fortuner GT',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 24, color: Colors.white))),
        ],
      ),
    );
  }
}
