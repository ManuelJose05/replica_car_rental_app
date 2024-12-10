
import 'package:car_rental_app/presentation/widgets/detail_car.dart';
import 'package:car_rental_app/presentation/widgets/detail_more_cars.dart';
import 'package:car_rental_app/presentation/widgets/detail_person_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool showLoading = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 0)).then((value) {
      setState(() {
        showLoading = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Row(
              children: [
                Icon(Icons.info_outline),
                SizedBox(width: 10,),
                Text('Information', style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            SizedBox(width: 35),
            Row(
              children: [
                Icon(Icons.notification_add_outlined),
                SizedBox(width: 8,),
                Text('Notification', style: Theme.of(context).textTheme.titleMedium)
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          detailCar(context),
          SizedBox(height: 25,),
          detailPerson(context),
          SizedBox(height: 25,),
          detailMoreCars(context),
        ],
      ),
    );
  }
}