import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingListApp());
}

class ShoppingListApp extends StatefulWidget {
  @override
  _ShoppingListAppState createState() => _ShoppingListAppState();
}

class _ShoppingListAppState extends State<ShoppingListApp> {
  List<String> items = ['Apples', 'Bananas', 'Milk', 'Eggs', 'Bread', 'Cheese'];
  List<String> cart = [];

  void addToCart(String item) {
    setState(() {
      if (!cart.contains(item)) {
        cart.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Shopping List')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () => addToCart(items[index]),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Shop'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen(cart: cart)),
              );
            }
          },
        ),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  final List<String> cart;
  CartScreen({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return Card(child: ListTile(title: Text(cart[index])));
        },
      ),
    );
  }
}
