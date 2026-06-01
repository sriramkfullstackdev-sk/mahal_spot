import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {

  final String name;
  final String status;
  final Color statusColor;

  const RequestCard({
    super.key,
    required this.name,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),

      decoration: BoxDecoration(

        color: Colors.grey.shade300,

        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(

        children: [

          /// PROFILE DOT
          Container(

            height: 28,
            width: 28,

            decoration: const BoxDecoration(
              color: Colors.purpleAccent,
              shape: BoxShape.circle,
            ),
          ),

          const SizedBox(width: 15),

          /// NAME
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          /// STATUS
          Container(

            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),

            decoration: BoxDecoration(

              color: statusColor,

              borderRadius: BorderRadius.circular(20),
            ),

            child: Text(
              status,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// ACCEPT
          Container(

            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),

            decoration: BoxDecoration(

              color: Colors.greenAccent,

              borderRadius: BorderRadius.circular(20),
            ),

            child: const Text("Accept"),
          ),

          const SizedBox(width: 8),

          /// REJECT
          Container(

            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),

            decoration: BoxDecoration(

              color: Colors.redAccent,

              borderRadius: BorderRadius.circular(20),
            ),

            child: const Text("Reject"),
          ),
        ],
      ),
    );
  }
}