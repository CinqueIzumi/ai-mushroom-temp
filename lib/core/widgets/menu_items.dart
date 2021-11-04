import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

List<MenuItem> kItemsUser = [
   MenuItem<int>(
    id: 0,
    title: 'ABOUT',
    prefix: const Icon(Icons.settings),
  ),
   MenuItem<int>(
    id: 1,
    title: 'PREDICT',
    prefix: const Icon(Icons.search),
  ),
];

final kMenuUser = Menu(
  items: kItemsUser.map((e) => e.copyWith(prefix: null)).toList(),
);

final kMenuWithIconUser = Menu(
  items: kItemsUser,
);