import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/models/book_appoinment_all/review_model.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/home/homeWidget/rating_category.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        title: '4.8 (4,942 reviews)',
        actions: [
          Icon(Icons.pending_outlined)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            RatingCategory(),
            SizedBox(height: 20,),
            Expanded(child: ListView.builder(
              itemCount: review.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            review[index].ImageUrl),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        ("${review[index].name}"),
                        maxLines: 1, // Ensure text does not exceed one line
                        overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                        style: const TextStyle(
                          wordSpacing: 0.15,
                          fontWeight: FontWeight.w600,
                          fontSize: 15, // Reduced font size
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: AppColors.primaryColors,
                            width: 2.0,
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                size: 14,
                                color: AppColors.primaryColors,
                              ),
                              const SizedBox(width: 2), // Adjust spacing between icon and text
                              Text(
                                "5",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12, // Decreased font size for a more compact appearance
                                  color: AppColors.primaryColors,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.pending_outlined,size: 20,),
                    ],
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        "${review[index].subtitle}",
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.favorite_border,
                              color: AppColors.primaryColors, size: 15),
                          SizedBox(width: 5),
                          Text(
                            "938",
                            style: TextStyle(
                                color: Colors.black, fontSize: 14),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "6 days ago",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),

                );
              },
            ),)
          ],
        ),
      ),
    ) ;
  }
}
