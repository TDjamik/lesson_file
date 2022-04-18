class User {
  late String firstName;
  late String lastName;
  late String email;
  late String password;

  User(this.firstName, this.lastName, this.email, this.password);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    };
    return map;
  }

  @override
  String toString() {
    return "firstName: $firstName\n"
        "lastName: $lastName\n"
        "email: $email\n"
        "password: $password\n";
  }
}

class AllUsers{
  static List list = [];

  void addUser(User user){
    list.add(user.toJson());
  }

  void readUser(){
    for(var item in list){
      print(item);
    }
  }
}

