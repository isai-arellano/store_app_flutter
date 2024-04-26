import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:store_app_flutter/data/models/cart.dart';
import 'package:store_app_flutter/data/models/shoe.dart';
import 'package:store_app_flutter/ui/components/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
               const SizedBox(height: 20),
               Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      Shoe individualShoe = value.getUserCart()[index];
                      return CartItem(shoe: individualShoe);
                    }),
                ),
          ],
        ),
      )
    );
  }
}