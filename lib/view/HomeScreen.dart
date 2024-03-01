import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hakiwha/colors.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _priceController = TextEditingController();
  final currencyFormatter =
      NumberFormat.currency(locale: 'ar_DZ', symbol: 'DA');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
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
                      const SizedBox(
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
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search...',
                            hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: AppColor.blackColor,
                                fontSize: 16,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  textStyle: const TextStyle(
                                    color: AppColor.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
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
                                  textStyle: const TextStyle(
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
                      const SizedBox(
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
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage('images/profile.png'),
                                    width: 50,
                                    height: 50,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Oussama TALAMALEK",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
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
                                                textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8.0),
                                            Container(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green,
                                              ),
                                              child: const CircleAvatar(
                                                radius: 2,
                                                backgroundColor: Colors.green,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 250,
                                          height: 50,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Write your request here...',
                                              hintStyle: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                            ),
                                            maxLines: 3,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 250,
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                child: TextField(
                                                  controller: _priceController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black),
                                                  decoration:
                                                      const InputDecoration(
                                                    hintText:
                                                        'Enter the price...',
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                              const Text(
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
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 83,
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      child: Text(
                                        'Post',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
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
                      ),
                    ],
                  ),
                ),
              ),
              Offer(
                  profileImagePath: 'images/profile.png',
                  userName: "userName",
                  date: "date",
                  description: "description",
                  price: "1500")
            ],
          ),
        ),
      ),
    );
  }
}

class Offer extends StatelessWidget {
  final String profileImagePath;
  final String userName;
  final String date;
  final String description;
  final String price;

  const Offer({
    Key? key,
    required this.profileImagePath,
    required this.userName,
    required this.date,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.greyColor,
          border: Border.all(
            color: AppColor.purpulColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(profileImagePath),
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: AppColor.blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      date,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: AppColor.blackColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Text(
                        description,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: AppColor.blackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 170),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.greyColor,
                            border: Border.all(
                              color: AppColor.purpulColor,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              " $price DA",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: AppColor.purpulColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.message,
                          color: AppColor.purpulColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
