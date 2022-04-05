// import 'package:counter_with_bloc/my%20project/cubit/reservation_cubit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class ReservationModel{
//   int? id;
//   int? usertrun;
//   String? reservationplace;
//   String? currentreservation;
//   ReservationModel
//       ({
//     required this.id,
//     required this.usertrun,
//     required this.reservationplace,
//     required this.currentreservation,
//   });
// }
//
//
// class CurrentReservationScreen extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//
//     return BlocProvider(
//       create: (context) => ReservationCubit(),
//       child: BlocConsumer<ReservationCubit, ReservationState>(
//         listener: (BuildContext context, ReservationState state) {
//           // TODO: implement listener
//         },
//         builder: (BuildContext context, ReservationState state) {
//           return Scaffold(
//
//             appBar: AppBar(
//                 backgroundColor: Colors.deepPurple,
//                 title: Text('Current Reservation',)
//             ),
//             body:  Container(
//               width: double.infinity,
//               height: double.infinity,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0),
//                   gradient: LinearGradient(
//                       colors: [
//                         Color.fromRGBO(143, 148, 251, 1),
//                         Color.fromRGBO(143, 148, 251, .6),
//                       ]
//                   )
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: ListView.separated(
//                   shrinkWrap: true,
//                   itemBuilder: (context , index)=> buildReservationItem(Reservation [index]),
//                   separatorBuilder: (context ,index )=> Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 350,
//                         height: 150,
//                         child: Card(
//                           elevation: 10,
//                           borderOnForeground: true,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25)
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//
//                               Text(
//                                 "Reservation place: ",
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.deepPurple,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Your Trun: ",
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.deepPurple,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Current Reservation: ",
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.deepPurple,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   itemCount: Reservation.length,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//   Widget buildReservationItem(ReservationModel reservation)=>Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Container(
//         width: 350,
//         height: 150,
//         child: Card(
//           elevation: 10,
//           borderOnForeground: true,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(25)
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Reservation place: ${reservation.reservationplace}",
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.deepPurple,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Your Trun: ${reservation.usertrun} ",
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.deepPurple,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Current Reservation: ${reservation.currentreservation}",
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.deepPurple,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }