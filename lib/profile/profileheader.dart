import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/Ellipse.png"),
          ),
          SizedBox(height: 6),
          Text(
            'hi, Drow!',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 6),
          Text(
            '+62123456789',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 6),
          Text(
            'indra@codehouse.id',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
