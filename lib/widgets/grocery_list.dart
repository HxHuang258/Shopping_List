import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/grocery_list_item.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key, required this.groceryItems, required this.onRemoveItem});

  final List<GroceryItem> groceryItems;
  final void Function(GroceryItem item) onRemoveItem;

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(groceryItems[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
        ),
        onDismissed: (direction) {
          onRemoveItem(groceryItems[index]);
        },
        child: GroceryListItem(groceryItem: groceryItems[index]),
        ),
    );
  }
}