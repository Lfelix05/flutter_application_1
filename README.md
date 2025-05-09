# flutter_application_1
## *Sistema de registro de usuário*

Este é um aplicativo Flutter para gerenciamento de usuários. Ele permite que os usuários visualizem, cadastrem e excluam informações de outros usuários de forma simples e intuitiva. O aplicativo é um teste para pequenas aplicações que necessitam de um controle básico de usuários.

### Funcionalidades
-Visualização de Usuários:  Exibe uma lista de usuários cadastrados com informações como nome e e-mail.
-Detalhes do Usuário:       Ao clicar em um usuário, é exibido um diálogo com os detalhes do mesmo.
-Cadastro de Usuários:      Permite adicionar novos usuários com nome, e-mail e senha.
-Exclusão de Usuários:      Possibilidade de excluir usuários da lista com confirmação para evitar exclusões acidentais.
-Interface Responsiva:      Design simples e responsivo.

### Estrutura do Projeto
-main.dart:             Arquivo principal que inicializa o aplicativo.
-user.dart:             Modelo de dados para os usuários, incluindo métodos para serialização e gerenciamento da lista de usuários.
-home_page.dart:        Tela inicial do aplicativo com navegação para a tela de cadastro.
-view/register.dart:    Tela para cadastro de novos usuários.
-users_table.dart:      Tela que exibe a lista de usuários e permite interações como visualização e exclusão.

### Tecnologias Utilizadas
-Flutter: Framework para desenvolvimento multiplataforma.
-Dart: Linguagem de programação utilizada no Flutter.

Este aplicativo é um teste simples e eficiente para gerenciar usuários, com foco em usabilidade e design intuitivo.