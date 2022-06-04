import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  static const route = '/calendar';

  Calendar();

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(200, 0, 100, 0),
            title: const Text('Calendar')),
        body: CalendarDatePicker(
          firstDate: DateTime.utc(DateTime.now().year),
          lastDate: DateTime.utc(DateTime.now().year, 12, 31),
          initialDate: DateTime.now(),
          currentDate: _currentDate,
          onDateChanged: (selectedDate) {
            setState(() {
              _currentDate = selectedDate;
            });
          },
          // selectedDayPredicate: (day) {
          //   return isSameDay(_selectedDay, day);
          // },
          // onDaySelected: (selectedDay, focusedDay) {
          //   setState(() {
          //     _selectedDay = selectedDay;
          //     _focusedDay = focusedDay;
          //   });
          // },
          // calendarFormat: _calendarFormat,
          // onFormatChanged: (CalendarFormat format) {
          //   setState(() {
          //     _calendarFormat = format;
          //   });
          // },
          // startingDayOfWeek: StartingDayOfWeek.monday,
          // daysOfWeekVisible: true,
          // onPageChanged: (focusedDay) {
          //   _focusedDay = focusedDay;
          // },
          // headerStyle: const HeaderStyle(
          //     formatButtonVisible: false, titleCentered: true),
        ));
  }
}
