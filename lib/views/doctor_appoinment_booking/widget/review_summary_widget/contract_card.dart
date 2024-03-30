
import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
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
                  bodyMedium(context, 'Date & Hour'),
                  Text(
                    'Dec 23, 2024 | 10:00 AM',
                    style: TextStyle(
                      wordSpacing: 0.15,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bodyMedium(context, 'Package'),
                  Text(
                    'Messaging',
                    style: TextStyle(
                      wordSpacing: 0.15,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bodyMedium(context, 'Duration'),
                  Text(
                    '30 minutes',
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