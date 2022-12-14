class UsersModel {
  UsersModel(
      {required this.id,
      required this.name,
      required this.age,
      required this.address,
      required this.phone,
      required this.email});

   String? id;
   String? name;
   String? age;
   String? address;
   String? phone;
   String? email;

  factory UsersModel.fromJson(Map<String,dynamic> json) =>
  UsersModel(
  id: json['id'],
  name: json['name'],
  age: json['age'],
  address: json['address'],
  phone: json['phone'],
  email: json['email'],
  );


  Map<String,dynamic> toJson() =>{
    'id' : id,
    'name' : name,
    'age' : age,
    'address' : address,
    'phone' : phone,
    'email' : email,
  };
}
