import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController usuario = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          children: [

            Text(
              'Texto Customizado',
              style: TextStyle(
                fontFamily: 'Pixeloid',
                fontWeight: PixeloidSans-Bold.ttf,
              ),
            ),

            TextField(
              controller: usuario,
              decoration: InputDecoration(
                labelText: 'Usuário',
              ),
            ),

            TextField(
              controller: senha,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),

            ElevatedButton(
              onPressed: () {
                print('Usuário: ${usuario.text}');
                print('Senha: ${senha.text}');
              },
              child: Text('Entrar'),
            ),

          ],
        ),
      ),
    );
  }
}