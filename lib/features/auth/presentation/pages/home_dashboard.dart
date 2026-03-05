import 'package:flutter/material.dart';
import 'package:sycomfy/features/app/presentation/widget/item_button.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: 30, child: Icon(Icons.person_pin_circle)),
              SizedBox(height: 16),
              Text('Welcom to Sycomfy'),
              SizedBox(height: 16),
              Text(
                'Join us to track repairs, manage orders, and enjoy a personalized shopping experience.',
              ),
              SizedBox(height: 20),
              ItemButton(),
            ],
          ),
        ),
      ),
    );
  }
}
