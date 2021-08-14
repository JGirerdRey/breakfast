import 'package:flutter/widgets.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: Text("🥺 Oops something went wrong"),
      ),
    );
  }
}
