import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/widgets/grocery_list.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _ItemsScreenState();
  }
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: GroceryList(groceryItems: groceryItems),
    );
  }
}