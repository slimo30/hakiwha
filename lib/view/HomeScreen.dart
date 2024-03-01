import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hakiwha/colors.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _priceController = TextEditingController();
  final currencyFormatter =
      NumberFormat.currency(locale: 'ar_DZ', symbol: 'DA');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/profile.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Hello, User!',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: AppColor.whiteColor,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search...',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.purpulColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Special needs interface',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColor.whiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.greyColor,
                      border: Border.all(
                        color: AppColor.purpulColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Special needs interface',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColor.purpulColor,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.gerytowColor,
                  border: Border.all(
                    color: AppColor.purpulColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/profile.png'),
                            width: 50,
                            height: 50,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Oussama TALAMALEK",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: AppColor.blackColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "online",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    Container(
                                      padding: EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                      child: CircleAvatar(
                                        radius: 2,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Write your request here...',
                                      hintStyle: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      border:
                                          InputBorder.none, // Remove the border
                                      focusedBorder: InputBorder
                                          .none, // Remove the border when focused
                                    ),
                                    maxLines:
                                        3, // Adjust the number of lines as needed
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .end, // Align "DA" to the right
                                    children: [
                                      TextField(
                                        controller: _priceController,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                        decoration: InputDecoration(
                                          hintText: 'Enter the price...',
                                          border: InputBorder
                                              .none, // Remove the border
                                        ),
                                      ),
                                      Text(
                                        'DA',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          GestureDetector(
                            child: Container(
                              child: Text(
                                'Post',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: AppColor.purpulColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
