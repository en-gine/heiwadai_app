enum RoomType {
  single('シングル'),
  semiDouble('セミダブル'),
  double('ダブル'),
  twin('ツイン'),
  fourth('フォース'),
  ;

  const RoomType(this.displayName);
  final String displayName;
}

enum SmokeType {
  nonSmoking('禁煙'),
  smoking('喫煙'),
  ;

  const SmokeType(this.displayName);
  final String displayName;
}

class MealType {
  bool morning;
  bool dinner;
  late String displayName = _displayName();

  MealType({
    required this.morning,
    required this.dinner,
  });

  String _displayName() {
    String displayName = "";

    displayName += (morning) ? "朝食あり" : "朝食なし";
    displayName += (dinner) ? "夕食あり" : "夕食なし";

    return displayName;
  }
}

// enum MealType {
//   morning('朝食あり'),
//   dinner('夕食あり'),
//   ;

//   const MealType(this.displayName);
//   final String displayName;
// }

class Plan {
  const Plan({
    required this.id,
    required this.title,
    required this.price,
    required this.imageURL,
    required this.roomType,
    required this.mealType,
    required this.smokeType,
    required this.overView,
  });
  final String id;
  final String title;
  final int price;
  final String imageURL;
  final RoomType roomType;
  final MealType mealType;
  final SmokeType smokeType;
  final String overView;
}

// // 宿泊プラン
// type Plan struct {
// 	ID        uuid.UUID
// 	Title     string
// 	Price     uint
// 	ImageURL  string
// 	RoomType  RoomType
// 	MealType  MealType
// 	SmokeType SmokeType
// 	OverView  string
// }

// type MealType struct {
// 	Morning bool
// 	Dinner  bool
// }

// func (m MealType) String() string {
// 	var mealType string
// 	morning := "朝食なし"
// 	dinner := "夕食なし"
// 	if m.Morning {
// 		morning = "朝食あり"
// 	}
// 	if m.Dinner {
// 		dinner = "夕食あり"
// 	}
// 	mealType = morning + dinner
// 	return mealType
// }