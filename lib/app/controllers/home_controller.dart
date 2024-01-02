import 'package:currency/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
    late final TextEditingController toText;
    late final TextEditingController fromText;

    List<CurrencyModel> currencies = CurrencyModel.getCurrencies();
    CurrencyModel toCurrency = CurrencyModel();
    CurrencyModel fromCurrency = CurrencyModel();
    
    HomeController({required this.toText, required this.fromText}) {
      toCurrency = currencies[0];
      fromCurrency = currencies[1];
    }

    void convert(){
      String text = toText.text;
      double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
      double returnValue = 0;

      print(fromCurrency.name);

      if (fromCurrency.name == 'Real') {  
        print('Real');
        returnValue = value * toCurrency.real; 
      } else if (fromCurrency.name == 'Dolar') {
        print('Dolar');
        returnValue = value * toCurrency.dolar; 
      } else if (fromCurrency.name == 'Euro') {
        print('Euro');
        returnValue = value * toCurrency.euro; 
      } else if (fromCurrency.name == 'Bitcoin') {
        print('Bitcoin');
        returnValue = value * toCurrency.bitcoin; 
      }
      print(returnValue);

      fromText.text = returnValue.toStringAsFixed(2);
    }
}