import 'package:demo/post/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.arrow_back_ios_outlined,
          size: 20.sp,
        ),
        centerTitle: false,
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
      ),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
