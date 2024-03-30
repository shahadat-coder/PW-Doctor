import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 0,
        semanticContainer: true,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bodyMedium(context, 'Amount'),
                  const Text(
                    '\$20',
                    style: TextStyle(
                      wordSpacing: 0.15,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bodyMedium(context, 'Duration (30 mins)'),
                  const Text(
                    '1x \$20',
                    style: TextStyle(
                      wordSpacing: 0.15,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width -
                    140, // Adjust width as needed
                child: Divider(
                  color: Colors.grey.withOpacity(0.3),
                  height: 2,
                ),
              ),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bodyMedium(context, 'Total'),
                  const Text(
                    '\$20',
                    style: TextStyle(
                      wordSpacing: 0.15,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}