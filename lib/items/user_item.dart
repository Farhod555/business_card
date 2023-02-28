import 'package:business_card/models/users_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget usersItem(BuildContext context, UsersModel user) {
  return SizedBox(
    height: 50,
    child: Column(
      children: [
        Row(
          children: [
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width * 0.27,
            //       child: Text(
            //         'Id: ${user.id}',
            //         maxLines: 1,
            //         style: TextStyle(
            //           fontWeight: FontWeight.w700,
            //           color: Colors.blue,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Row(
            //       children: [
            //         Expanded(
            //           child: Text(
            //             'Username: ${user.username}',
            //             maxLines: 6,
            //             style: TextStyle(
            //               fontWeight: FontWeight.w700,
            //               color: Colors.black,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Email: ${user.email}',
            //           maxLines: 6,
            //           style: TextStyle(
            //             fontWeight: FontWeight.w700,
            //             color: Colors.blue,
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Row(
            //       children: [
            //         Expanded(
            //           child: Text(
            //             'Address: ${user.address}',
            //             maxLines: 6,
            //             style: TextStyle(
            //               fontWeight: FontWeight.w700,
            //               color: Colors.blue,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Phone: ${user.phone}',
            //           style: TextStyle(
            //             fontWeight: FontWeight.w700,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Row(
            //       children: [
            //         Expanded(
            //           child: Text(
            //             'Website: ${user.website}',
            //             style: TextStyle(
            //               fontWeight: FontWeight.w700,
            //               color: Colors.blue[900],
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 5,
            //     ),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Company: ${user.company}',
            //           style: TextStyle(
            //             fontWeight: FontWeight.w700,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //     const Divider(
            //       thickness: 1,
            //     ),
            //   ],
            // ),
          ],
        ),
      ],
    ),
  );
}
