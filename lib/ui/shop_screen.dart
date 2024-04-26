import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app_flutter/data/models/cart.dart';
import 'package:store_app_flutter/data/models/shoe.dart';
import 'package:store_app_flutter/ui/components/shoe_tile.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  // Agregar item shoe al carrito
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(context: context, 
    builder: (context) => const AlertDialog( 
      title: Text('Successfully added'),
      content: Text('Check your cart'),
    )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Search"), Icon(Icons.search)],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'everyone files.. same fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot picks ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // Crea el item shoe
             Shoe shoe = value.getShoeList()[index];
              // Retorna el item show
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
                );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
      ),
    );
  }
}
