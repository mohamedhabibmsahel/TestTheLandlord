import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Replace 'ParticulierScreen' with the actual screen for 'Particulier'
                Get.toNamed('/particulier');
              },
              child: Text('Particulier Screen'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Replace 'SocieteScreen' with the actual screen for 'Société'
                Get.toNamed('/societe');
              },
              child: Text('Société Screen'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Replace 'ClientNormalScreen' with the actual screen for 'Client Normal'
                Get.toNamed('/client_normal');
              },
              child: Text('Client Normal Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
