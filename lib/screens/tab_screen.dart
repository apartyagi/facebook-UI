import 'package:facebook/screens/screens.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabLayoutMain extends StatefulWidget {
  const TabLayoutMain({Key? key}) : super(key: key);

  @override
  State<TabLayoutMain> createState() => _TabLayoutMainState();
}

class _TabLayoutMainState extends State<TabLayoutMain> {
  List<IconData> iconsfortab = [
    MdiIcons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    MdiIcons.bellOutline,
  ];

  List<Widget> scrrens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: iconsfortab.length,
//      initialIndex: 0,
      child: Scaffold(
        body: IndexedStack(
          index: selectedindex,
          children: scrrens,
        ),
        bottomNavigationBar: CustomtabbarW(
          selectind: selectedindex,
          iconsq: iconsfortab,
          ontap: (index) => setState(() => selectedindex = index),
        ),
      ),
    );
  }
}
