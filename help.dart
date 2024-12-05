import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Help',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Here are some useful tips to help you navigate the app:',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              _buildHelpItem(
                'Use the "Pick Image" button to select an image.',
              ),
              _buildHelpItem(
                'Click "Classify Image" to start the classification.',
              ),
              _buildHelpItem(
                'Check the results displayed on the app.',
              ),
              _buildHelpItem(
                'Adjust settings in the "Settings" page.',
              ),
              const SizedBox(height: 30),
              const Text(
                'For further assistance, contact us at:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // You can implement an email launch here if desired
                  print('Email tapped');
                },
                child: const Text(
                  'rahmainfo78@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHelpItem(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
