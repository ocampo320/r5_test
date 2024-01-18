import 'package:flutter/material.dart';
import 'package:r5_test/domain/entities/todo.dart';
import 'package:r5_test/presentation/blocs/todo_bloc.dart';
import 'package:r5_test/presentation/widgets/custom_check_box_widget.dart';

class CustomTodoCardWidget extends StatelessWidget {
  final Todo todo;
  final VoidCallback? onTap;
  final ValueChanged<bool> onChanged;
  final BookingBloc? bookingBloc;

  const CustomTodoCardWidget(
      {super.key,
      required this.todo,
      this.onTap,
      required this.onChanged,
      this.bookingBloc});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        trailing: StreamBuilder<bool>(
            initialData: false,
            stream: bookingBloc?.checkBoxStream,
            builder: (context, snapshot) {
              bool isChecked=false;
              if (todo.status == "") {
                bool isChecked = snapshot.data ?? false;
              } else {
                if (todo.status == "completada") {
                  isChecked = true;
                } else {
                   isChecked = true;
                }
              }

              return CustomCheckbox(
                value: isChecked!,
                onChanged: (value) {
                  bookingBloc?.setCheckBox(value, todo.id ?? "");
                },
              );
            }),
        leading: GestureDetector(
          onTap: onTap,
          child: const Icon(Icons.delete),
        ),
        title: Text(
          todo.title ?? "",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.description ?? "",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Status: ${todo.status}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              'Date: ${todo.date}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
