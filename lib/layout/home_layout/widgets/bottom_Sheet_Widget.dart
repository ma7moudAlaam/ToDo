import 'package:flutter/material.dart';
import 'package:todo/layout/home_layout/widgets/custom_text_form_Field.dart';

class BottomSheetWidegt extends StatelessWidget {
  BottomSheetWidegt({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add New Task",
              style: theme.textTheme.titleLarge!.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormField(
                messageValidateOne: "You Must Provide Task Title",
                messageValidateTwo:
                    "you task title must be at least 10 characters",
                controller: titleController,
                hintText: "Enter Your Task Title"),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormField(
                maxLines: 4,
                messageValidateOne: "You Must Provide Task Description",
                messageValidateTwo:
                    "you task description must be at least 10 characters",
                controller: descriptionController,
                hintText: "Enter Your Task Description"),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Select time",
                  style:
                      theme.textTheme.titleLarge!.copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    showCalender(context);
                  },
                  child: Text(
                    "12:00 Am",
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.colorScheme.primary),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: Text(
                  "Add Task",
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void showCalender(BuildContext context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)));
  }
}
