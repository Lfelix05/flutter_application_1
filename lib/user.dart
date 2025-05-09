class User {
  String? name;
  String? email;
  String? password;

  User({required this.name, required this.email, required this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    return data;
  }

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  static List<User> users = [];

  static void createUser(String name, String email, String password) {
    final user = User(name: name, email: email, password: password);
    users.add(user);
  }
}
