import 'package:heiwadai_app/models/plan.dart';

List<Plan> plans = [
  Plan(
    id: "1",
    title: "平和台ホテル天神",
    price: 30000,
    roomType: RoomType.semiDouble,
    // mealType: MealType.morning,
    mealType: MealType(dinner: true, morning: false),
    smokeType: SmokeType.nonSmoking,
    overView: '',
  ),
  Plan(
    id: "2",
    title: "平和台ホテル天神",
    price: 30000,
    roomType: RoomType.double,
    // mealType: MealType.dinner,
    mealType: MealType(dinner: true, morning: true),
    smokeType: SmokeType.smoking,
    overView: '',
  ),
];
