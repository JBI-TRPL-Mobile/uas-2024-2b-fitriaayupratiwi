import 'package:flutter/material.dart';
import 'package:template_project/home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding untuk mengatur jarak gambar dari atas
              Padding(
                padding:
                    const EdgeInsets.only(top: 32.0), // Sesuaikan nilai ini
                child: Image.asset(
                  'assets/2.png',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 16), // Jarak antara gambar dan teks

              Text(
                "Selamat Datang",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),

              Text('Log in now to continue'),
              SizedBox(height: 30), // Jarak antara teks dan tombol

              // Tombol Sign In dan Sign Up dengan lebar tetap
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150, // Lebar tombol Sign In
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      child: Text('Sign In'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50), // Tinggi tombol
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // Jarak antar tombol
                  SizedBox(
                    width: 150, // Lebar tombol Sign Up
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text('Sign Up'),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50), // Tinggi tombol
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
