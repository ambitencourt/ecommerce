class UserModel {
  late String? displayName;
  late String? email;
  late String? photoUrl;
  UserModel({
    this.displayName,
    this.email,
    this.photoUrl,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    email = json['email'];
    photoUrl = json['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['displayName'] = displayName;
    data['email'] = email;
    data['photoUrl'] = photoUrl;
    return data;
  }
}
