import 'package:flutter/material.dart';
import 'package:store_app_flutter/data/models/shoe.dart';
import 'package:store_app_flutter/ui/components/shoe_tile.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: Row(
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
              Shoe shoe = Shoe(
                  name: 'Nike Down',
                  price: '240',
                  imagePath: 'lib/images/1.png',
                  description: 'description');
              return ShoeTile(shoe: shoe);
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
    );
  }
}
