import 'package:heiwadai_app/models/store.dart';
import 'package:heiwadai_app/models/user.dart';
import 'package:heiwadai_app/models/plan.dart';
// import 'package:heiwadai_app/models/stay_customer.dart';


class Reservation {
  const Reservation({
    required this.id,
    required this.checkInDate,
    required this.checkOutDate,
    required this.checkInTime,
    required this.content,
    required this.cost,
    required this.payment,
    // required this.stayCustomer,
    required this.stayStore,
    required this.reservedPlan,
    required this.reservedUser,
    required this.note,
  });
  final String id;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final String checkInTime; // 15~29時の30分刻み
  final String content;
  final int cost;
  final String payment;
  // final StayCustomer stayCustomer;
  final Store stayStore;
  final Plan reservedPlan;
  final User reservedUser;
  final String note;
}

// // 予約
// type Reservation struct {
// 	ID           uuid.UUID
// 	CheckInDate  time.Time
// 	CheckOutDate time.Time
// 	checkInTime  string
// 	Content      string
// 	Cost         int
// 	Payment      string
// 	StayCustomer *StayCustomer
// 	StayStore    *Store
// 	ReservedPlan *Plan
// 	ReservedUser *User
// 	Note         string
// }
// ​