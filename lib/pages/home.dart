import 'package:flutter/material.dart';
import 'package:flutter_startup/pages/league_items.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'calendar.dart';
import 'game_items.dart';
import '../time_provider.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String currentDate = DateFormat('EEEE, dd of MMMM').format(DateTime.now());
  late final pages = [LeagueItems(), GameItems('')];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TimeProvider date = Provider.of<TimeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(200, 0, 100, 0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currentDate,
              style: const TextStyle(fontSize: 30),
            ),
            TextButton.icon(
              onPressed: () {
                date.selectDate(context);
              },
              icon: const Icon(
                Icons.calendar_month_rounded,
                color: Colors.white,
                size: 40,
              ),
              label: Text(''),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 50,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
        selectedFontSize: 26,
        unselectedFontSize: 18,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.web_asset_rounded,
            ),
            label: 'Leagues',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_soccer,
              ),
              label: 'Games')
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
