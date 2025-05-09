import 'package:flutter/material.dart';
import 'package:flutter_application_1/user.dart';

class UsersTable extends StatefulWidget {
  const UsersTable({super.key});

  @override
  State<UsersTable> createState() => _UsersTableState();
}

class _UsersTableState extends State<UsersTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 37, 67),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: User.users.length,
          itemBuilder: (context, index) {
            final user = User.users[index];
            return ListTile(
              title: Text(user.name ?? 'Nome não disponível'),
              subtitle: Text(user.email ?? 'Email não disponível'),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    User.users.removeAt(index);
                  });
                },
              ),
              onTap: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Detalhes do Usuário'),
                  content: Text('Nome: ${user.name}\nEmail: ${user.email}'),
                  actions: [
                    TextButton(
                      child: const Text('Fechar'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
      )
            );
          },
        ),
      ),
    );
  }
}