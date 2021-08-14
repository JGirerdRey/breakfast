import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/data/ticket_repository.dart';
import 'package:logger/logger.dart';

import 'home/home_page.dart';

void main() {
  runApp(const TicketApp());
}

final logger = Logger();

class TicketApp extends StatelessWidget {
  const TicketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Poêle Finder',
        theme: ThemeData(
          backgroundColor: Colors.blueGrey,
          primarySwatch: Colors.blue,
          fontFamily:  'ubuntu'
        ),
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<SpoonRepository>(
              create: (context) => SpoonRepository(),
            ),
          ],
          child: HomePage(),
        ));
  }
}
