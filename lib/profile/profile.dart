import 'package:codehouse_tugas3/profile/profileheader.dart';
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
              SizedBox(
                height: 36.5,
              ),
              Text(
                "Account",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color(0xff5f6f8c),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 6),
              InkWell(
                highlightColor: Color(0xff5f6f8c),
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF).withOpacity(0.80),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.10),
                        blurRadius: 3.0,
                        offset: Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/User Settings.png',
                        width: 30,
                        height: 30,
                        color: Colors.grey[600],
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Account Setting',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
