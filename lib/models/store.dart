class Store {
  const Store({
    required this.id,
    required this.name,
    required this.address,
    required this.isActive,
    required this.stayAble,
    required this.qrCode,
    required this.unLimitedQrCode,
  });

  final String id;
  final String name;
  final String address;
  final bool isActive;
  final bool stayAble;
  final String qrCode;
  final String unLimitedQrCode;
}


// type Store struct {
// 	ID              uuid.UUID
// 	Name            string
// 	Address         string
// 	IsActive        bool
// 	StayAble        bool //宿泊施設かどうか
// 	QrCode          uuid.UUID
// 	UnLimitedQrCode uuid.UUID
// }