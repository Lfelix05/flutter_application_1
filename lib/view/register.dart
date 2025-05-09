import 'package:flutter/material.dart';
import 'package:flutter_application_1/user.dart';
import 'users_table.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future <void> _registerUser() async {
    final String name = _nameController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;

    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preencha todos os campos')),
      );
      return;  
    }
    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('A senha deve ter pelo menos 6 caracteres')),
      );
      return;
    }
    if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email inválido')),
      );
      return;
    }

    User.createUser(name, email, password);
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const UsersTable()),
      );    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 0, 37, 67),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cadastro de Usuário',
              style: TextStyle(
                fontSize: 32,
                color: const Color.fromARGB(255, 0, 37, 67),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  icon: Icon(Icons.person),
                  hintText: 'Digite seu nome',
                  
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                  hintText: 'Digite seu email',
                  
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
             child: TextFormField(  
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  icon: Icon(Icons.lock),
                  hintText: 'Digite sua senha',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _registerUser, child: Text('Cadastrar')),
          ],
        ),
      ),
    );
  }
}
