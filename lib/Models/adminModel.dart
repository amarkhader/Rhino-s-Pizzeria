class Admin {
  String name;
  String phoneNumber;
  String email;
  String password;
  String adminpass;

  Admin(
      {required this.email,
      required this.name,
      required this.password,
      required this.phoneNumber,
      required this.adminpass});

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
        name: json['name'],
        phoneNumber: json['phonenumber'],
        email: json['email'],
        password: json['password'],
        adminpass: json['adminpass']);
  }

  Map<String, dynamic> toJson() => {
    'name': this.name,
    
  };
}
