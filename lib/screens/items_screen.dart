import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/screens/new_item_screen.dart';
import 'package:shopping_list/widgets/grocery_list.dart';
import 'package:shopping_list/models/grocery_item.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _ItemsScreenState();
  }
}

class _ItemsScreenState extends State<ItemsScreen> {
  final List<GroceryItem> _groceryItems = [];
void _addItem() async {
  final newItem = await Navigator.of(context).push<GroceryItem>(
    MaterialPageRoute(builder: (ctx) => const NewItemScreen()),
  );

  if (newItem == null) {
    return;
  }

  setState(() {
    _groceryItems.add(newItem);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _addItem, 
            icon: const Icon(Icons.add)),
        ],
        title: const Text('Your Groceries'),
      ),
      body: GroceryList(groceryItems: _groceryItems),
    );
  }
}