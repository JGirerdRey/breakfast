import 'package:flutter/widgets.dart';

class HomeEmpty extends StatelessWidget {
  const HomeEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: Text("Empty"),
      ),
    );
  }
}
