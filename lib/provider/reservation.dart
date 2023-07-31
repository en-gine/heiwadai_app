import 'package:meta/meta.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 宿泊期間
final startProvider = StateProvider<DateTime?>((ref) => null);
final endProvider = StateProvider<DateTime?>((ref) => null);

// 宿泊人数
final adultGuestsProvider = StateProvider<int?>((ref) => null);
final childGuestsProvider = StateProvider<int?>((ref) => null);
final roomCountProvider = StateProvider<int?>((ref) => null);

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
