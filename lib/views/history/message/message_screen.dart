import 'package:flutter/material.dart';
import 'package:pw_doctor/models/book_appoinment_all/review_model.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.builder(
            itemCount: review.length,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){},
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        review[index].ImageUrl),
                  ),
                  title: Text("${review[index].name}",
                    maxLines: 1, // Ensure text does not exceed one line
                    overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                    style: const TextStyle(
                      wordSpacing: 0.15,
                      fontWeight: FontWeight.w600,
                      fontSize: 15, // Reduced font size
                      color: Colors.black,
                    ),
                  ),
                  subtitle:  Text(
                    "${review[index].subtitle}",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Text(
                    "${review[index].date}",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
