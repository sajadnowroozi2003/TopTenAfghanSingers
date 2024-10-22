import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'در باره ما',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'SplashFont',
            color: Colors.white,
          ),
        ),
          automaticallyImplyLeading: false,
          actions: [
          IconButton(
          onPressed: () {
    Navigator.pop(context);
    },
      icon: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    )],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/sajad-success-photo.png'),
            ),
            const Text(
              'سجاد نوروزی',
              style: TextStyle(
                fontFamily: 'SplashFont',
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'توسعه دهنده فلاتر',
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 40),
            const Divider(
              thickness: 1,
              color: Colors.teal,
              endIndent: 50,
              indent: 50,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.teal.shade300,
                child: const ListTile(
                  leading: Icon(Icons.email,color: Colors.white,),
                  title: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Text(
                      'sajad.nowroozi5442@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.teal.shade300,
                child: const ListTile(
                  leading: Icon(Icons.phone,color: Colors.white,),
                  title: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Text(
                      '+93 728-754-735',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => _launchURL('https://www.linkedin.com/in/sajad-nowroozi/'),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/mediaLogo/linkedin.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => _launchURL('https://sajad.nowroozi5442@gmail.com'),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/mediaLogo/google.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => _launchURL('https://www.instagram.com/sajad.nowroozi/'),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/mediaLogo/social-instagram-new-circle-512.webp'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => _launchURL('https://t.me/sajad_nowroozi'),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/mediaLogo/telegram.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
