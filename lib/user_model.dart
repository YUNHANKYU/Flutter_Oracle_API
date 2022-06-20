class UserModel {
  String userId;
  String userName;
  int birthYear;
  String addr;
  int height;
  DateTime mdate;
  String? mobile1;
  String? mobile2;

  UserModel(this.userId, this.userName, this.birthYear, this.addr, this.height,
      this.mdate,
      {this.mobile1, this.mobile2});

  factory UserModel.fromDs(dynamic ds) {
    return UserModel(
      ds['userId'],
      ds['userName'],
      ds['birthYear'],
      ds['addr'],
      ds['height'],
      ds['mdate'],
      mobile1: ds['mobile1'],
      mobile2: ds['mobile2'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'birthYear': birthYear,
      'addr': addr,
      'height': height,
      'mdate': mdate,
      'mobile1': mobile1,
      'mobile2': mobile2,
    };
  }
}
