import 'package:heiwadai_app/models/reservation.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/plans.dart';
import 'package:heiwadai_app/data/users.dart';

List<Reservation> reservations = [
  Reservation(
    id: "1",
    checkInDate: DateTime(2021, 10, 20),
    checkOutDate: DateTime(2021, 10, 22),
    checkInTime: "27:00",
    content: "0000",
    cost: 10000,
    payment: "0000",
    // stayCustomer: ,
    stayStore: stores[0],
    reservedPlan: plans[0],
    reservedUser: users[0],
    note: "0000",
  ),
  Reservation(
    id: "2",
    checkInDate: DateTime(2021, 10, 21),
    checkOutDate: DateTime(2021, 10, 25),
    checkInTime: "15:00",
    content: "0000",
    cost: 10000,
    payment: "0000",
    // stayCustomer: ,
    stayStore: stores[1],
    reservedPlan: plans[1],
    reservedUser: users[0],
    note: "0000",
  ),
];
