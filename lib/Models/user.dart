import 'dart:convert';
User userfromJson(String str) =>User.fromJson(json.decode(str));

String userToJson(User data) =>json.encode(data.toJson());
class User{
  String Name;
  String Surname;
  String Address ;
  String Tel ;
  String Email ;
  String CardNo;
  String password;

  User({
    this.CardNo,
    this.password,
});

  factory User.fromJson(Map<String, dynamic> json) => User(
     CardNo: json["Name"],
     password: json["password"],
  );
  Map<String, dynamic> toJson() =>{
    "CardNo": CardNo,
    "password": password,
  };

  }