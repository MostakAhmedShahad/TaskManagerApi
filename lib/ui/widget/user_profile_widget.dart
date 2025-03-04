import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/update_profile.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateProfile()));
      },
      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
      leading: CircleAvatar(child: Icon(Icons.person)),
      tileColor: Colors.green,
      title: Text('Mostak Ahmed'),
      subtitle: Text('mostakahmedshahad74@gamail.com'),
      
    );
  }
}