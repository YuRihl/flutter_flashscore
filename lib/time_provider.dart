import 'package:flutter/material.dart';

class TimeProvider extends ChangeNotifier {
  DateTime _date = DateTime.now();

  DateTime getDate() {
    return _date;
  }

  Future<Null> selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year, 12, 31),
      initialDatePickerMode: DatePickerMode.day,
    );

    if (_datePicker != null && _datePicker != _date) {
      _date = _datePicker;
      notifyListeners();
    }
  }
}
