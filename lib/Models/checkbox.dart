class CheckBox {
  String title;
  bool ischecked;
  CheckBox(
      {required this.title,
      required this.ischecked,
      });

  factory CheckBox.fromJson(Map<String, dynamic> json) {
    return CheckBox(
      title: json['title'],
      ischecked: json['ischecked'],
      
    );
  }
}