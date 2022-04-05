import 'package:counter_with_bloc/my%20project/cubit/api_data/post.dart';
import 'package:counter_with_bloc/my%20project/cubit/api_data/posts_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentReservationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, List<Post>>(builder: (context, state) {
      // if (state.isEmpty) {
      //   return Center(
      //     child: CircularProgressIndicator(),
      //   );
      // } else
      return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text(
              'Current Reservation',
            )),
        body: BlocBuilder<PostsCubit, List<Post>>(
          builder: (context, state) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(143, 148, 251, 1),
                    Color.fromRGBO(143, 148, 251, .6),
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.length,
                    itemBuilder: (context, index) {
                      Post post = state[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 350,
                            height: 150,
                            child: Card(
                              elevation: 10,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Reservation place: ${post.id}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Your Trun: ${post.id} ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Current Reservation: ${post.id}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            );
          },
        ),
      );
    });
  }
// Widget buildReservationItem(ReservationModel reservation)=>Column(
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Container(
//       width: 350,
//       height: 150,
//       child: Card(
//         elevation: 10,
//         borderOnForeground: true,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(25)
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Reservation place: ${reservation.reservationplace}",
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.deepPurple,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               "Your Trun: ${reservation.usertrun} ",
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.deepPurple,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               "Current Reservation: ${reservation.currentreservation}",
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.deepPurple,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ],
// );
}
