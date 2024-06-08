import 'package:flutter/material.dart';

class PrefixLoginWidget extends StatelessWidget {
  const PrefixLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 14,
          backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/1200px-Flag_of_Saudi_Arabia.svg.png"),
        ),
        SizedBox(width: 5),
        Text(
          "+966",
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
