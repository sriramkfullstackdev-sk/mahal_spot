import 'package:flutter/material.dart';

class TimeField extends StatelessWidget {

  const TimeField({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      width: 120,
      height: 70,

      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),

      child: Row(
        children: const [
          Icon(
            Icons.access_time,
            color: Colors.grey,
            size: 35,
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'time',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
