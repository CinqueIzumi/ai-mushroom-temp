import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

List<MenuItem> kItemsUser = [
  MenuItem<int>(
    id: 0,
    title: 'HELP',
    prefix: const Icon(Icons.help),
  ),
  MenuItem<int>(
    id: 1,
    title: 'PREDICT',
    prefix: const Icon(Icons.search),
  ),
   MenuItem<int>(
    id: 2,
    title: 'ABOUT',
    prefix: const Icon(Icons.settings),
  ),
];

final kMenuUser = Menu(
  items: kItemsUser.map((e) => e.copyWith(prefix: null)).toList(),
);

final kMenuWithIconUser = Menu(
  items: kItemsUser,
);