import 'package:flutter/material.dart';

class StatusTemplate extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  final double imageOffsetY;
  final double sheetHeight;
  final Color buttonColor;

  const StatusTemplate({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
    this.imageOffsetY = -150,
    this.sheetHeight = 344,
    this.buttonColor =Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4FC),
      body: Stack(
        children: [
          // image
          Center(
            child: Transform.translate(
              offset: Offset(0, imageOffsetY),
              child: Image.asset(
                imagePath,
                width: 118,
                height: 223,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // bottom sheet
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: sheetHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),

          // content
          Positioned(
            left: 28,
            right: 28,
            bottom: 0,
            child: SafeArea(
              minimum: const EdgeInsets.only(bottom: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(height: 130),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: onButtonPressed,
                      child: Text(
                        buttonText,
                        style: const TextStyle(fontSize: 18,color: Colors.white),
                      ),
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
}
