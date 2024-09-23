import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}, ${user.age}',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(user.bio),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: user.interests
                  .map((interest) => Chip(label: Text(interest)))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
