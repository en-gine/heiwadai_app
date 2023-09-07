import 'package:heiwadai_app/models/plan.dart';

List<Plan> plans = [
  Plan(
    id: "1",
    title: "彩り綺麗な朝を自分スタイルで♪＜RAGGRUPPI朝食Aセット＞",
    price: 30000,
    imageURL: "https://placehold.jp/375x200.png",
    roomType: RoomType.semiDouble,
    mealType: MealType(dinner: true, morning: false),
    smokeType: SmokeType.nonSmoking,
    overView: '平和台ホテル天神店2F『長浜 まんさく鮨』で、新鮮な魚介を使ったお寿司のセットをご夕食でお召し上がりいただけるプランです！長浜鮮魚市場や姪浜魚市場から新鮮な魚を直送しているので、活きの良いぷりっぷりのネタを味わえます！まんさく鮨のイチオシは「煮穴子」。新鮮で活きたまま仕入れ、店内で捌きます。プランメニューにも含まれておりますので、ふわっふわの食感を是非ご堪能下さい！',
  ),
  Plan(
    id: "2",
    title: "彩り綺麗な朝を自分スタイルで♪＜RAGGRUPPI朝食Aセット＞",
    price: 30000,
    imageURL: "https://placehold.jp/375x375.png",
    roomType: RoomType.double,
    mealType: MealType(dinner: true, morning: true),
    smokeType: SmokeType.smoking,
    overView: '概要',
  ),
  Plan(
    id: "3",
    title: "～朝食付～【ふわっふわ】肉厚煮穴子が入った、長浜まんさく鮨セット付プラン＜まんさくセット＞",
    price: 26000,
    imageURL: "https://placehold.jp/180x180.png",
    roomType: RoomType.double,
    mealType: MealType(dinner: false, morning: true),
    smokeType: SmokeType.smoking,
    overView: '概要',
  ),
];
