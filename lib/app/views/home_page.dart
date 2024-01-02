import 'dart:async';

import 'package:currency/app/components/currency_box.dart';
import 'package:currency/app/controllers/home_controller.dart';
import 'package:currency/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late final HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.asset('assets/images/logo.png', width: 100, height: 100),
                SizedBox(height: 100),
                CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model!;
                    });
                  },
                  controller: homeController.toText,
                ),
                SizedBox(height: 10),
                CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model!;
                    });
                  },
                  controller: homeController.fromText,
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      color: Colors.white
                    ),
                    backgroundColor: Colors.amber
                  ),
                  onPressed: () {
                    homeController.convert();
                  }, 
                  child: Text('CONVERTER')
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}