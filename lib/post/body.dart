import 'package:demo/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/write_comments.dart';



class Body extends StatelessWidget {
  const Body(
      {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.r),
        ),
      ),
      width: double.infinity,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(25.r),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 40.r,
                                backgroundImage: AssetImage(KPostImage1),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nadine Karlberg",
                                    style: kH2,
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    "2 hours ago",
                                    style:
                                        kH3.copyWith(color: Color(0xff979797)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Kära grannar ! Imorgon kommer vi att ha en födelsedagsfest "
                            "för att fira att jag fyller år ! Jag hoppas att vi inte kommer"
                            " att störa er .",
                            style: kH3,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Color(0xff979797),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text("4 Like",
                                      style:
                                          TextStyle(color: Color(0xff979797)))
                                ],
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.comment,
                                    color: Color(0xff979797),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "2 Comments",
                                    style: TextStyle(color: Color(0xff979797)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(20.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Comments",
                            style: kH2,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30.r,
                                backgroundImage: AssetImage(KPostImage2),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jorge Watson",
                                    style: kH2.copyWith(fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "2 hours ago",
                                    style:
                                        kH3.copyWith(color: Color(0xff979797)),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                      "Wow , Vaaaa roligt ! Grattis på födelsedag "),
                                  Container(
                                    width: 300.w,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Reply",
                                          hintStyle:
                                              TextStyle(color: kPrimaryColor)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30.r,
                                backgroundImage: AssetImage(KPostImage3),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Katana Cooper",
                                    style: kH2.copyWith(fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "1 hours ago",
                                    style:
                                        kH3.copyWith(color: Color(0xff979797)),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text("Grattis på födelsedag ! "),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          WriteComments(),
        ],
      ),
    );
  }
}

