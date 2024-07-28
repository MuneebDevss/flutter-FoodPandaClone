import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),

      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            isSelected?isSelected=false:isSelected=true;
            setState(() {

            });
          },
          child: AnimatedContainer(
            width: isSelected?200:80.0,
            height: 60.0,
            curve: Curves.fastEaseInToSlowEaseOut,
            decoration: BoxDecoration(
              color: isSelected?Colors.green:Colors.blue,
              borderRadius: isSelected?BorderRadius.circular(50.0):BorderRadius.circular(10.0),
            ),
            duration: const Duration(milliseconds: 300),
            child: isSelected? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.check,color: Colors.green[50],),
              const SizedBox(width: 10,),
              const Text('Added',style: TextStyle(color: Colors.white),)
            ],) :const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
