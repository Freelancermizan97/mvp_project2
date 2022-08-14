import 'package:demo/profile_pages/dataModel.dart';
import 'package:demo/profile_pages/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AreaEdit extends StatefulWidget
{

  @override
  State<AreaEdit> createState() => _AreaEditState();
}






class _AreaEditState extends State<AreaEdit>
{

  static List<String> areaName = ['Bandhagen','Stockholm ','Årtsa'];
  String? selectItem = 'Bandhagen' ;

  final List<AreaDataModel> AreaName = List.generate(
      areaName.length, (index) => AreaDataModel('${areaName[index]}'));


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

          title:  Text('Area', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900, color: Colors.black),),

          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.r),
              child: Center(child: Text('Save', style: TextStyle(color: Color(0xffB0B0B0), fontSize: 16.sp, fontWeight: FontWeight.w700),)),
            )
          ],
        ),

        body: ListView.builder(
          itemCount: AreaName.length,

          itemBuilder: (context, index)
          {
            return Card(
              child:ListTile(
                //selected: true,
                //selectedTileColor:Color(0xffE8E8FF) ,
                selectedColor: Color(0xffE8E8FF),
                title: Text(AreaName[index].areaName, style: TextStyle(color: Colors.black),),
                onTap: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileEdit(areaDataModel: AreaName[index])));
                },
              ) ,
            );
          },

        )
    );
  }
}
