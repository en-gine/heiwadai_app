import 'package:meta/meta.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:heiwadai_app/models/plan.dart';

// 宿泊期間
final startProvider = StateProvider<DateTime?>((ref) => null);
final endProvider = StateProvider<DateTime?>((ref) => null);

// 宿泊人数
final adultGuestsProvider = StateProvider<int?>((ref) => null);
final childGuestsProvider = StateProvider<int?>((ref) => null);
final roomCountProvider = StateProvider<int?>((ref) => null);

// hotel選択
@immutable
class _Hotel {
  const _Hotel({required this.id, required this.active});
  final String id;
  final bool active;

  _Hotel copyWith({String? id, bool? active}) {
    return _Hotel(
      id: id ?? this.id,
      active: active ?? this.active,
    );
  }
}

final selectHotelProvider =
    StateNotifierProvider<SelectHotelState, List<_Hotel>>(
  (ref) => SelectHotelState(),
);

class SelectHotelState extends StateNotifier<List<_Hotel>> {
  SelectHotelState()
      : super(
          const [
            _Hotel(id: "1", active: false),
            _Hotel(id: "2", active: false),
            _Hotel(id: "3", active: false),
            _Hotel(id: "4", active: false),
          ],
        );

  void toggle(String key) {
    state = [
      for (final hotel in state)
        if (hotel.id == key) hotel.copyWith(active: !hotel.active) else hotel,
    ];
  }
}

// 詳細検索
// MealType mealType = MealType(morning: false, dinner: false);
@immutable
class PlanFilter {
  const PlanFilter(
      {required this.title, required this.category, required this.active});
  final String title;
  final String category;
  final bool active;

  PlanFilter copyWith({String? title, String? category, bool? active}) {
    return PlanFilter(
      title: title ?? this.title,
      category: category ?? this.category,
      active: active ?? this.active,
    );
  }
}

final planFilterProvider =
    StateNotifierProvider<PlanFilterState, List<PlanFilter>>(
  (ref) => PlanFilterState(),
);

class PlanFilterState extends StateNotifier<List<PlanFilter>> {
  PlanFilterState()
      : super([
          PlanFilter(
            title: RoomType.single.displayName,
            category: 'room',
            active: false,
          ),
          PlanFilter(
            title: RoomType.semiDouble.displayName,
            category: 'room',
            active: false,
          ),
          PlanFilter(
            title: RoomType.double.displayName,
            category: 'room',
            active: false,
          ),
          PlanFilter(
            title: RoomType.twin.displayName,
            category: 'room',
            active: false,
          ),
          PlanFilter(
            title: RoomType.fourth.displayName,
            category: 'room',
            active: false,
          ),
          PlanFilter(
            title: SmokeType.nonSmoking.displayName,
            category: 'smoke',
            active: false,
          ),
          PlanFilter(
            title: SmokeType.smoking.displayName,
            category: 'smoke',
            active: false,
          ),
          const PlanFilter(
            title: "朝食あり",
            category: 'meal',
            active: false,
          ),
          const PlanFilter(
            title: "夕食あり",
            category: 'meal',
            active: false,
          ),
        ]);

  void radioSwitch(String key, String category) {
    state = [
      for (final filter in state)
        if (filter.category == category)
          if (filter.title == key)
            filter.copyWith(active: !filter.active)
          else
            filter.copyWith(active: false)
        else
          filter,
    ];
  }

  void toggle(String key) {
    state = [
      for (final filter in state)
        if (filter.title == key)
          filter.copyWith(active: !filter.active)
        else
          filter,
    ];
  }
}
