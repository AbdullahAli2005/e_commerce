import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountPage extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  void _signOut(BuildContext context) async {
    await _auth.signOut();
    Navigator.pushReplacementNamed(context, '/login'); // Redirect to Login screen after sign out
  }

  @override
  Widget build(BuildContext context) {
    final user = _auth.currentUser;

    return Scaffold(
      backgroundColor: Colors.white, // White background for the entire page
      appBar: AppBar(
        title: const Text(
          'My Account',
          style: TextStyle(color: Colors.black), // White text in app bar
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Profile Section
            
            const SizedBox(height: 16),
            Text(
              user?.displayName ?? 'User Name',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Black text for user name
              ),
            ),
            const SizedBox(height: 8),
            Text(
              user?.email ?? 'Email not available',
              style: const TextStyle(fontSize: 18, color: Colors.black), // Black text for email
            ),
            const SizedBox(height: 32),

            // Settings and Navigation Options
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.black), // Black icon
              title: const Text('Settings', style: TextStyle(color: Colors.black)), // Black text
              onTap: () {
                // Navigate to Settings page
                Navigator.pushNamed(context, '/settings');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.black), // Black icon
              title: const Text('Order History', style: TextStyle(color: Colors.black)), // Black text
              onTap: () {
                // Navigate to Order History page
                Navigator.pushNamed(context, '/order-history');
              },
            ),
            const Divider(),
            SizedBox(height: 20,),

            // Sign Out Button
            ElevatedButton(
              onPressed: () => _signOut(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Black button background
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
              ),
              child: const Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.white, // White text for button
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
