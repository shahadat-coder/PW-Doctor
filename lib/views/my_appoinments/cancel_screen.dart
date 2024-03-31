import 'package:flutter/material.dart';
import 'package:pw_doctor/models/my_appoinment_model/canceled_model.dart';
import 'package:pw_doctor/utils/colors.dart';

class CancelScreen extends StatefulWidget {
  const CancelScreen({super.key});

  @override
  State<CancelScreen> createState() => _CancelScreenState();
}

class _CancelScreenState extends State<CancelScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
          itemCount: canceledData.length,
          itemBuilder: (context,index){

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
                            image: NetworkImage(canceledData[index].UrlImage),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ("${canceledData[index].name}"),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              wordSpacing: 0.15,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Row(
                            children: [
                              Text('${canceledData[index].communicate}',style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w800
                              ),),
                              Chip(
                                label: const Text(
                                  'Canceled',
                                  style: TextStyle(color: Colors.red, fontSize: 12),
                                ),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Colors.red,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: AppColors.thirdColors,
                              ),
                              const SizedBox(width: 12,),
                              Image.asset('${canceledData[index].AssetImage}',height: 55,width: 55,),
                            ],
                          ),
                          Text(
                            '${canceledData[index].date}',
                            style:  const TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
