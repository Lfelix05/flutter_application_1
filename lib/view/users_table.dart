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
      body: Center(child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(color: const Color.fromARGB(255, 69, 69, 69)),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        
        child: ListView.builder(
          itemCount: User.users.length,
          itemBuilder: (context, index) {
            final user = User.users[index];
            return Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(color: const Color.fromARGB(255, 69, 69, 69)),
                borderRadius: BorderRadius.circular(8.0),
              ),
              
              child: ListTile(
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
              ),
                
              title: Text(user.name ?? 'Nome não disponível'),
              subtitle: Text(user.email ?? 'Email não disponível'),
              trailing: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                iconSize: 20,
                color: Colors.white,
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Excluir Usuário'),
                      content: const Text('Você tem certeza que deseja excluir este usuário?'),
                      actions: [
                        TextButton(
                          child: const Text('Cancelar'),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        TextButton(
                          child: const Text('Excluir'),
                          onPressed: () {
                            Navigator.of(context).pop();})
                      ]),
                    );     
                },
              ),),),
              
            );
          },
        ),
      ),)
    );
  }
}