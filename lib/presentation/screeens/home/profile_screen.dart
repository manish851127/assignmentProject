import 'package:assignment_project/core/ui.dart';
import 'package:assignment_project/presentation/widgets/link_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
  static const String routeName="home";

}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Profile'),),
      body: ListView(
          padding:const EdgeInsets.all(10),
         children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Manish Kumar',style: TextStyles.heading2,),
              Text('manishcse60@gmail.com',style: TextStyles.body1,),
              LinkButton(buttonName: 'Edit Profile',
              function: (){

                // edit profile widget


              },
              )
            ],
          ),
          const Spacer(),
          ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.zero,
            leading:const Icon(CupertinoIcons.cube_box_fill),
            title: Text('My Orders',style: TextStyles.body1,),
          ),
          ListTile(
            onTap: (){
              // sign out function here
            },
            contentPadding: EdgeInsets.zero,
            leading:const Icon(Icons.exit_to_app,color: Colors.red,),
            title: Text('Sign Out',style: TextStyles.body1.copyWith(color: Colors.red),),
          ),
         ],
    ),
    );
  }
}