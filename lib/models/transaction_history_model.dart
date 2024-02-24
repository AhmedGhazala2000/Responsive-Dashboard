import 'package:flutter/material.dart';

class TransactionHistoryModel {
  final String title, subTitle, price;
  final Color? color;

  const TransactionHistoryModel({
    this.color,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}
