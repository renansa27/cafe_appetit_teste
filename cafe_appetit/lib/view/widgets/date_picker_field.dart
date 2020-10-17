import 'package:flutter/material.dart';

class DateTimeFormField extends FormField<dynamic> {
  DateTimeFormField({
    Key key,
    bool checkState,
    bool initialValue = false,
    Color activeColor,
    String title,
    List<String> saved,
    ThemeData themeData,
  }) : super(
            key: key,
            initialValue: initialValue,
            builder: (FormFieldState<dynamic> field) {
              void onChange() {
                if (field.value == false) {
                  activeColor = Colors.green;
                  print(activeColor);
                  checkState = true;
                  field.didChange(true);
                  saved.add(title);
                  print(saved);
                } else if (field.value == true) {
                  activeColor = Colors.red;
                  print(activeColor);
                  checkState = null;
                  field.didChange(null);
                  saved.remove(title);
                  saved.add("Not " + title);
                  print(saved);
                } else {
                  activeColor = themeData.textTheme.subhead.color;
                  checkState = false;
                  field.didChange(false);
                  saved.remove("Not " + title);
                  print(saved);
                }
              }

              return Checkbox(
                  tristate: true,
                  value: field.value,
                  activeColor: activeColor,
                  onChanged: (value) => onChange());
            });
}
