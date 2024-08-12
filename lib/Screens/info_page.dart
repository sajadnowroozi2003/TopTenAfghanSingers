import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

        // automaticallyImplyLeading: false,
        title: Text(
          'در باره ما',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'SplashFont',
              color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [

              ],
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage:
              AssetImage('assets/images/sajad-success-photo.png'),
            ),
            Text(
              'سجاد نوروزی',
              style: TextStyle(
                  fontFamily: 'SplashFont',
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              'برنامه نویس فلاتر',
              style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade800),
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              thickness: 1,
              color: Colors.teal,
              endIndent: 50,
              indent: 50,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.teal.shade300,
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Text(
                      'sajad.nowroozi5442@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.teal.shade300,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Text(
                      '+93 728-754-735',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                          AssetImage('assets/images/mediaLogo/Facebook.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                          AssetImage('assets/images/mediaLogo/google.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/mediaLogo/twitter.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
