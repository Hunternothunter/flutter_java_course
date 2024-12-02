// ignore_for_file: avoid_print, unused_import

import 'package:flutter/material.dart';

class AuthService {
  static void register(String username, String email, String password) {
    // Here you would typically make an API call to register the user
    // For now, we'll just print the values to the console
    print('Registering user: $username, Email: $email');
    // Simulate a delay
    Future.delayed(const Duration(seconds: 1), () {
      // Here, you can add logic to store user data in a database
      print('User registered successfully!');
    });
  }

  static void login(String email, String password) {
    // Here you would typically make an API call to log the user in
    print('Logging in user with Email: $email');
    // Simulate a delay
    Future.delayed(const Duration(seconds: 1), () {
      // Here, you can validate the credentials
      print('User logged in successfully!');
    });
  }
}
