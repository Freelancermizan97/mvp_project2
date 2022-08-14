import 'package:demo/profile_pages/dataModel.dart';
import 'package:demo/profile_pages/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobTitleEdit extends StatefulWidget
{
  @override
  State<JobTitleEdit> createState() => _JobTitleEditState();
}



class _JobTitleEditState extends State<JobTitleEdit>
{

  static List<String> jobName = ['Developer','Backend Developer', 'Forntend developer', 'System developer', 'Java developer ' ];

  final List<JobDataModel> JobName = List.generate(
      jobName.length, (index) => JobDataModel('${jobName[index]}'));



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 1,
        centerTitle: true,
        leading:IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20.sp,),
        ),
        title:  Text('Job Title', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900, color: Colors.black),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.r),
            child: Center(child: Text('Save', style: TextStyle(color: Color(0xffB0B0B0), fontSize: 16.sp, fontWeight: FontWeight.w700),)),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: JobName.length,
        itemBuilder: (context, index)
        {
          return Card(
            child:ListTile(
              selected: true,
              //selectedTileColor:Color(0xffE8E8FF) ,
              selectedColor: Color(0xffE8E8FF),
              title: Text(JobName[index].jobName, style: TextStyle(color: Colors.black),),
              onTap: ()
              {
                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileEdit(areaDataModel: AreaName[index])));
              },
            ) ,
          );
        },
        /*
        children: const [
          ListTile(
            selected: true,
            selectedTileColor:Color(0xffE8E8FF) ,

            title: Text('Developer', style: TextStyle(color: Colors.black),),
          ),

          ListTile(
            title: Text('Developer', style: TextStyle(color: Colors.black),),
          ),

          ListTile(
            title: Text('Backend Developer', style: TextStyle(color: Colors.black),),
          ),

          ListTile(
            title: Text('Forntend developer', style: TextStyle(color: Colors.black),),
          ),

          ListTile(
            title: Text('System developer', style: TextStyle(color: Colors.black),),
          ),

          ListTile(
            title: Text('Java developer ', style: TextStyle(color: Colors.black),),
          ),
        ],

         */
      )
    );
  }
}
