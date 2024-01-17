import 'package:flutter/material.dart';
import 'package:r5_test/presentation/blocs/todo_bloc.dart';
import 'package:r5_test/presentation/widgets/custom_date_piker.dart';

class AddTodoFormContent extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final BookingBloc? bookingBloc;
  AddTodoFormContent({super.key, this.bookingBloc});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: 'Título'),
            onChanged: (v) {
              bookingBloc?.setTitle(v);
            },
          ),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(labelText: 'Descripción'),
            onChanged: (v) {
              bookingBloc?.setDescription(v);
            },
          ),
          StreamBuilder<DateTime>(
              stream: bookingBloc?.dateStream,
              builder: (context, snapshot) {
                return CustomDatePicker(
                  selectedDate: snapshot.data ?? DateTime.now(),
                  onDateChanged: (dateTime) {
                    bookingBloc?.setDate(dateTime);
                  },
                );
              })
        ],
      ),
    );
  }
}
