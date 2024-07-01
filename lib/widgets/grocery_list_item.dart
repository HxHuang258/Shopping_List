import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem({super.key, required this.groceryItem});

  final GroceryItem groceryItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      child: ListTile(
        title: Text(groceryItem.name),
        leading: Container(
          width: 20,
          height: 20,
          color: groceryItem.category.colour,
        ),
        trailing: Text(groceryItem.quantity.toString()),
      ),
    );
  }
}
