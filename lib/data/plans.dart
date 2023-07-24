import 'package:heiwadai_app/models/plan.dart';

List<Plan> plans = [
  Plan(
    id: "1",
    title: "彩り綺麗な朝を自分スタイルで♪＜RAGGRUPPI朝食Aセット＞",
    price: 30000,
    imageURL: "https://placehold.jp/180x180.png",
    roomType: RoomType.semiDouble,
    // mealType: MealType.morning,
    mealType: MealType(dinner: true, morning: false),
    smokeType: SmokeType.nonSmoking,
    overView: '概要',
  ),
  Plan(
    id: "2",
    title: "彩り綺麗な朝を自分スタイルで♪＜RAGGRUPPI朝食Aセット＞",
    price: 30000,
    imageURL: "https://placehold.jp/180x180.png",
    roomType: RoomType.double,
    // mealType: MealType.dinner,
    mealType: MealType(dinner: true, morning: true),
    smokeType: SmokeType.smoking,
    overView: '概要',
  ),
];
