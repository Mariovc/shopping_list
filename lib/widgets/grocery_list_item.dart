import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem({super.key, required this.item, required this.onSwipe});

  final GroceryItem item;
  final void Function(GroceryItem item) onSwipe;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(item.id),
      onDismissed: (direction) {
        onSwipe(item);
      },
      child: ListTile(
        leading: Container(
          height: 20,
          width: 20,
          color: item.category.color,
        ),
        title: Text(item.name),
        trailing: Text(item.quantity.toString()),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(10),
    //   child: Row(
    //     children: [
    //       SizedBox.square(
    //         dimension: 20,
    //         child: ColoredBox(
    //           color: item.category.color,
    //         ),
    //       ),
    //       const SizedBox(
    //         width: 10,
    //       ),
    //       Text(item.name),
    //       const Spacer(),
    //       Text(
    //         item.quantity.toString(),
    //         textAlign: TextAlign.end,
    //       ),
    //     ],
    //   ),
    // );
  }
}
