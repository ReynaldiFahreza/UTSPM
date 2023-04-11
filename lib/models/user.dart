class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Nurul Irpan ",
      username: "Ipan",
      email: "2006012@itg.ac.id",
      profilePhoto:
          "https://i.ibb.co/XVjjfDk/Whats-App-Image-2023-04-10-at-11-40-58-1.jpg",
      phoneNumber: "08285784653",
    );
  }
}