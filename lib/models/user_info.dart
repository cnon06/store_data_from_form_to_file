class UserInfo {
  final String name;
  final int gender;
  final List<String> colors;
  final bool isStudent;

  UserInfo(
      {required this.name,
      required this.gender,
      required this.colors,
      required this.isStudent});

  @override
  String toString() {
    return "name: $name, gender: $gender, colors: $colors, isStudent: $isStudent";
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "gender": gender,
      "colors": colors,
      "isStudent": isStudent
    };
  }

  UserInfo.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        gender = json["gender"],
        colors = List<String>.from(json["colors"]) ,
        isStudent = json["isStudent"]
        ;
}
