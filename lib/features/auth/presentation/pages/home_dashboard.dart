import 'package:flutter/material.dart';
import 'package:sycomfy/features/app/presentation/widget/item_button.dart';
import 'package:sycomfy/features/auth/presentation/widgets/auth_tile.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: 40, child: Icon(Icons.person_pin_circle)),
              SizedBox(height: 16),
              Text(
                'Welcome to Sycomfy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 16),
              Text(
                'Join us to track repairs, manage orders, and enjoy a personalized shopping experience.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              ItemButton(buttonText: 'Login / Sign Up', onPressed: () {}),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.admin_panel_settings_rounded, size: 32),
                    title: Text(
                      'Sign in to access your details and track your current repair requests.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    AuthTile(
                      title: 'My Orders',
                      prefixIcon: Icon(
                        Icons.breakfast_dining_outlined,
                        size: 26,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                    ),

                    Divider(),
                    AuthTile(
                      title: 'Repair Tracking',
                      prefixIcon: Icon(
                        Icons.fire_extinguisher_rounded,
                        size: 26,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                    ),

                    Divider(),
                    AuthTile(
                      title: 'Shipping Addresses',
                      prefixIcon: Icon(Icons.location_on, size: 26),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                    ),

                    Divider(),
                    AuthTile(
                      title: 'App Settings',
                      prefixIcon: Icon(Icons.settings, size: 26),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                    ),

                    Divider(),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Text(
                'SYCOMFY V2.40',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
