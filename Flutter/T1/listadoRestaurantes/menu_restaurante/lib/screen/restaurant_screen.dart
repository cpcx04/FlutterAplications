import 'package:flutter/material.dart';
import 'package:menu_restaurante/widget/card_item.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_book),
        title: const Center(child: Text('Restaurante Europeo')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            Center(
              child: CardItem(
                nombre: 'Jamón Iberico Español',
                image:
                    'https://f0a7f4b1fe.cbaul-cdnwnd.com/d42ae1008dd2f9c94e7306aa5686a115/200000032-9d7f39e799/jamon.png?ph=f0a7f4b1fe',
                rating: 4.5,
              ),
            ),
            Center(
              child: CardItem(
                nombre: 'Jamón Iberico Español',
                image:
                    'https://f0a7f4b1fe.cbaul-cdnwnd.com/d42ae1008dd2f9c94e7306aa5686a115/200000032-9d7f39e799/jamon.png?ph=f0a7f4b1fe',
                rating: 4.5,
              ),
            ),
            Center(
              child: CardItem(
                nombre: 'Jamón Iberico Español',
                image:
                    'https://f0a7f4b1fe.cbaul-cdnwnd.com/d42ae1008dd2f9c94e7306aa5686a115/200000032-9d7f39e799/jamon.png?ph=f0a7f4b1fe',
                rating: 4.5,
              ),
            ),
            Center(
              child: CardItem(
                nombre: 'Jamón Iberico Español',
                image:
                    'https://f0a7f4b1fe.cbaul-cdnwnd.com/d42ae1008dd2f9c94e7306aa5686a115/200000032-9d7f39e799/jamon.png?ph=f0a7f4b1fe',
                rating: 4.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
