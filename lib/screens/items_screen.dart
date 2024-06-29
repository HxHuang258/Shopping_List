import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/screens/new_item_screen.dart';
import 'package:shopping_list/widgets/grocery_list.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _ItemsScreenState();
  }
}

class _ItemsScreenState extends State<ItemsScreen> {
void _addItem() {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (ctx) => const NewItemScreen()),
  );
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
      body: GroceryList(groceryItems: groceryItems),
    );
  }
}