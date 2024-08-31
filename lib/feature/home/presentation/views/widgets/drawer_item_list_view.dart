import 'package:flutter/material.dart';

import '../../../../../core/models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}
