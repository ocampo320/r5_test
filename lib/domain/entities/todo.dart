class Todo {
  String? id;
  String? title;
  String? description;
  String? status;
  String? date;

  Todo({this.title, this.description, this.status, this.date,this.id});

  Todo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    status = json['status'];
    date = json['date'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['status'] = status;
    data['date'] = date;
    data['id'] = id;
    return data;
  }
}
