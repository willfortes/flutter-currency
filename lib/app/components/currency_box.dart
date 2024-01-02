import 'dart:math';

import 'package:currency/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({
    super.key, 
    required this.items, 
    required this.controller,
    required this.onChanged,
    required this.selectedItem
  });

  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 56,
                  child: DropdownButton<CurrencyModel>(
                    value: selectedItem,
                    iconEnabledColor: Colors.amber,
                    isExpanded: true,
                    underline: Container(
                      height: 1,
                      color: Colors.amber,
                    ),
                    items: items.map((e) => DropdownMenuItem(
                      child: Text(e.name),
                      value: e,
                    )).toList(), 
                    onChanged: onChanged
                    ),
                )
                ),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)
                    )
                  ),
                ),
              )
            ]);
  }
}