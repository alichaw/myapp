import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../services/profile_service.dart';
import '../models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> profiles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadProfiles();
  }

  void loadProfiles() async {
    final ProfileService service = ProfileService();
    profiles = await service.getProfiles();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover Profiles'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: profiles.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to chat screen, passing the user profile
                    Navigator.pushNamed(context, '/chat', arguments: profiles[index]);
                  },
                  child: ProfileCard(user: profiles[index]),
                );
              },
            ),
    );
  }
}
