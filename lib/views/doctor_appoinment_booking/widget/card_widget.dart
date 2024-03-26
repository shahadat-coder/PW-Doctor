import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      semanticContainer: true,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://t3.ftcdn.net/jpg/05/04/25/70/360_F_504257032_jBtwqNdvdMN9Xm6aDT0hcvtxDXPZErrn.jpg',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      ('Dr. Jenny Watson'),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        wordSpacing: 0.15,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 100),
                    const Icon(
                      Icons.favorite,
                      color: AppColors.primaryColors,
                    )
                  ],
                ),
                const SizedBox(height: 15),
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
                const SizedBox(height: 15),
                Text(
                  'Immunologists',
                  style: const TextStyle(
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.primaryColors,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Christ Hospital in London, UK',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}