import 'package:flutter/material.dart';
import 'package:sycomfy/common/entities/item.dart';
import 'package:sycomfy/features/app/presentation/widget/Item_tile.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text('Shopping Cart'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz,size: 30,))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text('ITEMS'),
            SizedBox(height: 20),
            ItemTile(
              cartItem: Item(
                itemTitle: 'iPhone 15 Pro max Screen',
                itemSubTitle: 'Get youre replacement screen today',
                itemPrice: '\$99.99',
                itemQuantity: 1,
              ),
              onIncrement: () {},
              onDecrement: () {},
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
