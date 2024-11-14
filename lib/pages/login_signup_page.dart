import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  final _auth = FirebaseAuth.instance;
  bool isSignup = false;
  String email = '';
  String password = '';
  String errorMessage = '';
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();

  void toggleFormType() {
    setState(() {
      isSignup = !isSignup;
      errorMessage = '';
    });
  }

  void submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() => isLoading = true);

      try {
        if (isSignup) {
          await _auth.createUserWithEmailAndPassword(email: email, password: password);
        } else {
          await _auth.signInWithEmailAndPassword(email: email, password: password);
        }
        Navigator.pushReplacementNamed(context, '/main');
      } catch (e) {
        setState(() => errorMessage = e.toString());
      } finally {
        setState(() => isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Set background color to green
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'E-Commerce App', // Updated title
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                isSignup ? 'Signup' : 'Login',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              // Email TextField
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white24, // Semi-transparent white for field background
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: const TextStyle(color: Colors.white), // Text color
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => email = value!,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter an email' : null,
              ),
              const SizedBox(height: 16),
              // Password TextField
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white24,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                onSaved: (value) => password = value!,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter a password' : null,
              ),
              const SizedBox(height: 20),
              if (isLoading)
                const CircularProgressIndicator(),
              if (errorMessage.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(errorMessage, style: const TextStyle(color: Colors.red)),
              ],
              const SizedBox(height: 20),
              // Login or Signup Button
              ElevatedButton(
                onPressed: submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
                child: Text(
                  isSignup ? 'Signup' : 'Login',
                  style: const TextStyle(color: Colors.green), // Text color
                ),
              ),
              const SizedBox(height: 10),
              // Toggle Button for Signup/Login
              TextButton(
                onPressed: toggleFormType,
                child: Text(
                  isSignup
                      ? 'Already have an account? Login'
                      : 'Don\'t have an account? Signup',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
