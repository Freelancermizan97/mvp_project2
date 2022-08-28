import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WriteComments extends StatefulWidget {
  const WriteComments({Key? key}) : super(key: key);

  @override
  State<WriteComments> createState() => _WriteCommentsState();
}

class _WriteCommentsState extends State<WriteComments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.r,
        vertical: 10.r,
      ),
      color: Color(0xffF9F9F9),
      child: Row(
        children: [
          Spacer(),
          Container(
            height: 50.h,
            width: 350.w,
            padding: EdgeInsets.only(left: 20.r),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffE5E5EA)),
              borderRadius: BorderRadius.circular(15.r),
              color: Color(0xffFFFFFF),
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write a comment",
                  hintStyle: TextStyle(
                      fontFamily: 'Nun',
                      fontSize: 17,
                      color: Color(0xff979797))),
            ),
          ),
          Spacer(),
          Image.asset(
            "assets/icon/send_icon.png",
            height: 30.h,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
