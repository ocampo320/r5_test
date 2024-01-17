import 'package:flutter/material.dart';
import 'package:r5_test/domain/entities/todo.dart';

class CustomTodoCardWidget extends StatelessWidget {
  final Todo todo;
  final VoidCallback ? onTap;

  const CustomTodoCardWidget({super.key, required this.todo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: GestureDetector(
          onTap: onTap,
          child:  const Icon(Icons.delete),
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
