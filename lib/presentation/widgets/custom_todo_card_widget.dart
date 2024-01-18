import 'package:flutter/material.dart';
import 'package:r5_test/app_string.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/presentation/blocs/todo_bloc.dart';
import 'package:r5_test/presentation/views/home_view.dart';
import 'package:r5_test/presentation/widgets/custom_check_box_widget.dart';

class CustomTodoCardWidget extends StatefulWidget {
  final Todo todo;
  final VoidCallback? onTap;
  final ValueChanged<bool> onChanged;
  final BookingBloc? bookingBloc;

  const CustomTodoCardWidget({
    Key? key,
    required this.todo,
    this.onTap,
    required this.onChanged,
    this.bookingBloc,
  }) : super(key: key);

  @override
  _CustomTodoCardWidgetState createState() => _CustomTodoCardWidgetState();
}

class _CustomTodoCardWidgetState extends State<CustomTodoCardWidget> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
     isChecked = widget.todo.status ==AppStrings.done;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        trailing: CustomCheckbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked =   value;
              bookingBloc?.setCheckBox(value, widget.todo.id ?? "");
            });
            widget.onChanged(value);
          },
        ),
        leading: GestureDetector(
          onTap: widget.onTap,
          child: const Icon(Icons.delete),
        ),
        title: Text(
          widget.todo.title ?? "",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.todo.description ?? "",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Status: ${widget.todo.status}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              'Date: ${widget.todo.date}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
