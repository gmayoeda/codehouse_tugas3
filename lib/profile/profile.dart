import 'package:codehouse_tugas3/loginpage.dart';
import 'package:codehouse_tugas3/profile/otherinfo.dart';
import 'package:codehouse_tugas3/profile/profileheader.dart';
import 'package:codehouse_tugas3/profile/profileaccount.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: 36.5),
              ProfileAccount(),
              SizedBox(height: 18),
              OtherInfo(),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.logout_outlined),
                      label: Text("Log Out",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage(),
                          ),
                          (route) => false,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFEC5F70),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        minimumSize: Size(324.0, 45.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
