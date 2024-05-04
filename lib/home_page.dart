import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'main.dart';

const String girlImage =
    'https://allpngfree.com/apf-prod-storage-api/storage/thumbnails/cute-indian-girl-png-images--thumbnail-1663532453.jpg';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          //child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildImageSection(),
              _navigationSection(),
              _titleSection(),
              _bodySection(),
              _textSection(),
              _expandedSection(),
          ],
        ),
      ),
    ),
    );

  }

  Padding _expandedSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue.shade300,
              width: 50,
              height: 80,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.camera_alt,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Photo',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 80,
              color: Colors.blueAccent.shade200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 80,
              color: Colors.blue.shade300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Likes',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 80,
              color: Colors.blueAccent.shade200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.settings,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Setting',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _textSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text(
        'More Information',
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  Padding _bodySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        txt,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Padding _titleSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(70, 20, 70, 10),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        tileColor: Colors.blue.shade300,
        title: Center(child: Text('+  Follow')),
      ),
    );
  }

  Row _navigationSection() {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyContainer(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.photo,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                Text('254'),
                Text('Photos'),
              ],
            ),
          ),
        ),
        MyContainer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Icon(
                  Icons.people,
                  color: Colors.black,
                ),
                SizedBox(
              ),
              Text('564'),
              Text('Fllowers'),
            ],
          ),
        ),
        MyContainer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),
              Text('412'),
              Text('Likes'),
            ],
          ),
        ),
      ],
    );
  }

  Stack _buildImageSection() {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          width: double.infinity,
          height: 400,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 150,
          bottom: 0,
          right: 0,
          left: 0,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      girlImage,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Suzie Centore ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'UI Designer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
