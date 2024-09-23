class AuthService {
  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return email == "test@example.com" && password == "password";
  }
}
