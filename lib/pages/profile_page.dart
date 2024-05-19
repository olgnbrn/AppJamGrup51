import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import '../app/app.router.dart';
import '../services/authentication_service.dart';

// Servislerin tanımlanması
final _authenticationService = locator<AuthenticationService>();
final _navigationService = locator<NavigationService>();

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  InputDecoration _buildDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.black),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      border: OutlineInputBorder(),
      filled: true,
      fillColor: Colors.white[50],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            // Ayarlar sayfasına yönlendirme
          },
        ),
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/default_avatar.png'),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () async {
                        final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                        // Profil fotoğrafını değiştirme işlemi
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: _buildDecoration('İsim'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: _buildDecoration('Kullanıcı Adı'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _bioController,
                decoration: _buildDecoration('Bio'),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  _authenticationService.signOut();
                  _navigationService.replaceWith(Routes.loginView);
                },
                child: Text("Çıkış Yap"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.red,
                ),
              ),
              // Diğer widget'lar buraya eklenebilir.
            ],
          ),
        ),
      ),
    );
  }
}
