import 'package:flutter/material.dart';
import 'register.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Página Inicial',
              style: TextStyle(
                fontSize: 32,
                color: const Color.fromARGB(255, 0, 37, 67),
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZv7jqUMv_2Ch1mWlL0t-TB26LGdfTsa02tg&s',
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text('Cadastro'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
