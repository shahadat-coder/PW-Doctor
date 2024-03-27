import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/home/homeWidget/see_all_row.dart';

import 'widget/card_widget.dart';
import 'widget/item_row.dart';

class BookDoctorScreen extends StatefulWidget {
  const BookDoctorScreen({Key? key}) : super(key: key);

  @override
  State<BookDoctorScreen> createState() => _BookDoctorScreenState();
}

class _BookDoctorScreenState extends State<BookDoctorScreen> {
  bool _showMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(
        isLeading: true,
        title: "Dr. Jenny Watson",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pending_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CardWidget(),
            const SizedBox(height: 20),
            const SizedBox(
              height: 110,
              child: ItemCircleRow(),
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About Me',
                      style: TextStyle(
                        wordSpacing: 0.15,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      maxLines: _showMore ? null : 3,
                      _showMore
                          ? "Dr. Jenny Watson stands as a preeminent figure in the field of immunology, holding the esteemed position of top specialist at Christ Hospital in London. Her dedication and expertise have garnered widespread recognition, earning her numerous awards for her outstanding contributions to the medical field.\n\n"
                              "With a wealth of knowledge and experience, Dr. Watson offers private consultations, providing personalized care and expert advice to her patients. Her commitment to excellence ensures that individuals receive the highest standard of care tailored to their specific needs.\n\n"
                              "Whether diagnosing complex immunological disorders or developing innovative treatment plans, Dr. Jenny Watson's proficiency and passion for her work make her a trusted and invaluable resource in the medical community."
                          : "Dr. Jenny Watson stands as a preeminent figure in the field of immunology, holding the esteemed position of top specialist at Christ Hospital in London. Her dedication and expertise have garnered widespread recognition, earning her numerous awards for her outstanding contributions to the medical field.",
                      style:
                          const TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _showMore = !_showMore;
                            });
                          },
                          child: Text(
                            _showMore ? 'Show Less' : 'Show More',
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Working Time',
                      style: TextStyle(
                        wordSpacing: 0.15,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Monday - Friday. 08:00 AM - 20.00 PM",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                    const SizedBox(height: 15),
                    ArivableRow(
                      title: 'Reviews',
                      onTap: () {
                        Get.toNamed(RouteNames.reviewScreen);
                      },
                    ),
                    const SizedBox(height: 10),
                    Card(
                        elevation: 0,
                        semanticContainer: true,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://storage.googleapis.com/pai-images/1ebdd59610d6401c93e138bc2d41592f.jpeg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  'Charolette Hanlin',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 80,
                                ),
                                Chip(
                                  labelPadding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: const BorderSide(
                                      color: AppColors.primaryColors,
                                      width: 1.0,
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  label: const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 14,
                                        color: AppColors.primaryColors,
                                      ),
                                      SizedBox(width: 5),
                                      // Adjust spacing between icon and text
                                      Text(
                                        "5",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: AppColors.primaryColors,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(Icons.pending_outlined)
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Dr. Jenny is very professional in her work and responsive. I have consulted and my problem is solved",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 12),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: [
                                Icon(Icons.favorite_border,
                                    color: AppColors.primaryColors, size: 15),
                                SizedBox(width: 5),
                                Text(
                                  "938",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 14),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "6 days ago",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 12),
                                )
                              ],
                            )
                          ]),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(title: 'Book Appointment', onTap: () {})
          ],
        ),
      ),
    );
  }
}
