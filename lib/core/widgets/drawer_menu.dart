import 'package:ai_mushroom/core/widgets/menu_items.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/pages/about_page.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/pages/help_page.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/pages/mushroom_page.dart';
import 'package:drawerbehavior/drawer_scaffold.dart';
import 'package:drawerbehavior/menu_screen.dart';
import 'package:flutter/material.dart';

class DrawerScaleIcon extends StatefulWidget {
  final int initialState;

  const DrawerScaleIcon({Key? key, required this.initialState}) : super(key: key);

  @override
  _DrawerScaleIconState createState() => _DrawerScaleIconState();
}

class _DrawerScaleIconState extends State<DrawerScaleIcon> {
  late int selectedMenuItemId;
  late Menu menuToUse;
  late String title;

  List<Widget> pages = [
    const HelpPage(),
    const MushroomPage(),
    const AboutPage(),
  ];

  @override
  void initState() {
    menuToUse = kMenuWithIconUser;
    selectedMenuItemId = kMenuWithIconUser.items[widget.initialState].id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      appBar: AppBar(
        title: const Text('Mushroom Questionnaire',),
        centerTitle: true,
      ),
      drawers: [
        SideDrawer(
          percentage: 0.6,
          textStyle: Theme.of(context).textTheme.bodyText1,
          menu: menuToUse,
          animation: true,
          selectedItemId: selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            setState(() {
              selectedMenuItemId = itemId;
            });
          },
        )
      ],
      builder: (context, id) => IndexedStack(
        index: id,
        children: pages,
      ),
    );
  }
}
