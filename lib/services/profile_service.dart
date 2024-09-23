import '../models/user.dart';

class ProfileService {
  Future<List<User>> getProfiles() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      User(
          name: 'Cynthia',
          age: 26,
          location: 'Kenya',
          bio: 'Love traveling and sports',
          interests: ['Sports', 'Music', 'Fitness']),
      User(
          name: 'Ruth',
          age: 24,
          location: 'Canada',
          bio: 'Photographer and artist',
          interests: ['Art', 'Traveling']),
    ];
  }
}
