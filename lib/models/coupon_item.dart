enum CouponType { standard, birthday, custom }

class CouponItem {
  const CouponItem({
    required this.id,
    required this.name,
    required this.couponType,
    required this.discount,
    required this.expire,
    required this.isCombinationable,
    required this.overView,
    required this.usedAt,
    // required this.user,
    required this.targetStore,
  });

  final String id;
  final String name;
  final CouponType couponType;
  final int discount;
  final DateTime expire;
  final bool isCombinationable;
  final String overView;
  final DateTime? usedAt;
  // final User user;
  final List<String> targetStore;
}


// type Coupon struct {
//   ID                uuid.UUID
//   Name              string (「500円割引」とか「お誕生日」とか「〇〇」とか"クーポン"を抜いた値が入る)
//   CouponType        CouponType (Standard, Birthday, Customの3種類)
//   DiscountAmount    uint       //割引額
//   ExpireAt          time.Time  //有効期限
//   IsCombinationable bool       //併用可能
//   OverView          string     //概要
//   UsedAt            *time.Time //使用済
//   User              *User
//   TargetStore       []*Store //対象店舗
// }