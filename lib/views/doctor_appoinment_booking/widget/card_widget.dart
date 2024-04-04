import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    this.name,
    this.image,
    this.trade,
    this.hospital,
  }) : super(key: key);

  final String? name;
  final String? image;
  final String? trade;
  final String? hospital;

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
                  image: image != null
                      ? DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image!),
                  )
                      : null,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (name != null) ...[
                  Row(
                    children: [
                      Text(
                        name!,
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
                    width: MediaQuery.of(context).size.width - 140,
                    child: Divider(
                      color: Colors.grey.withOpacity(0.3),
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
                Text(
                  trade ?? '', // Use null-aware operator to handle null trade
                  style: const TextStyle(
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
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
                      hospital ?? '',
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
