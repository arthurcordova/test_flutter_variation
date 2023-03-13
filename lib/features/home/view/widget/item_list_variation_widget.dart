import 'package:arthur_test/features/home/model/variation_item.dart';
import 'package:flutter/material.dart';

class ItemListVariationWidget extends StatelessWidget {
  final VariationItem _item;

  ItemListVariationWidget(this._item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(_item.day.toString()),
          Text(_item.price.toStringAsFixed(2)),
          Text('${_item.variationD1.toStringAsFixed(2)}%'),
          Text('${_item.vartiationFirstOne.toStringAsFixed(2)}%'),
        ],
      ),
    );
  }
}
