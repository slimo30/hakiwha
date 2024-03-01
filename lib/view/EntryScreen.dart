import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hakiwha/colors.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  get buttonstyle => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/entry.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.purpulColor, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Border radius
                      ),
                      minimumSize: const Size(double.infinity, 50), // Height
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(textStyle: buttonstyle),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.transparent.withOpacity(0), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // Border radius
                        side: const BorderSide(
                          color: AppColor.purpulColor,
                          width: 2,
                        ),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                      // Height
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        textStyle: buttonstyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
