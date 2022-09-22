import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EditProfileView(),
    );
  }
}
