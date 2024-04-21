import 'package:store_app_flutter/data/models/shoe.dart';

class Cart {
  // Lista de items
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Down 1',
        price: '236',
        imagePath: 'lib/images/1.png',
        description: 'The forward-thinking design of this latest signature 1.'),
    Shoe(
        name: 'Nike Down 2',
        price: '237',
        imagePath: 'lib/images/2.png',
        description: 'The forward-thinking design of this latest signature 2.'),
    Shoe(
        name: 'Nike Down 3',
        price: '238',
        imagePath: 'lib/images/3.png',
        description: 'The forward-thinking design of this latest signature 3.'),
    Shoe(
        name: 'Nike Down 4',
        price: '239',
        imagePath: 'lib/images/4.png',
        description: 'The forward-thinking design of this latest signature 4.'),
    Shoe(
        name: 'Nike Down 5',
        price: '240',
        imagePath: 'lib/images/5.png',
        description: 'The forward-thinking design of this latest signature 5.'),
    Shoe(
        name: 'Nike Down 6',
        price: '241',
        imagePath: 'lib/images/6.png',
        description: 'The forward-thinking design of this latest signature 6.'),
    Shoe(
        name: 'Nike Down 7',
        price: '242',
        imagePath: 'lib/images/7.png',
        description: 'The forward-thinking design of this latest signature 7.'),
    Shoe(
        name: 'Nike Down 8',
        price: '236',
        imagePath: 'lib/images/8.png',
        description: 'The forward-thinking design of this latest signature 8.'),
  ];

  // Lista de items en el carrito del usuario
  List<Shoe> userCart = [];

  // Obtener lista de items
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  // Obtener carrito
  List<Shoe> getUserCart(){
    return userCart;
  }

  // Agregar items al carrito
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
  }
  
  // Remover items del carrito
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
  }

}
