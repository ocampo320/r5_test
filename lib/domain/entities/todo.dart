class Todo {
  String? title;
  String? description;
  String? status;
  DateTime? date;

  Todo({this.title, this.description, this.status, this.date});

  Todo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    status = json['status'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['status'] = status;
    data['date'] = date;
    return data;
  }
}
