class Store {
  const Store({
    required this.id,
    required this.name,
    required this.branchName,
    // required this.zipCode,
    required this.address,
    // required this.tel,
    // required this.parking,
    required this.accessInfo,
    // required this.stampImageUrl,
    required this.isActive,
    required this.stayAble,
    required this.qrCode,
    required this.unLimitedQrCode,
  });

  final String id;
  final String name;
  final String branchName;
  // final String zipCode;
  final String address;
  // final String tel;
  // final String parking;
  final String accessInfo;
  // final String stampImageUrl;
  final bool isActive;
  final bool stayAble;
  final String qrCode;
  final String unLimitedQrCode;
}

// type Store struct {
// 	ID              uuid.UUID
// 	Name            string
// 	BranchName      string
// 	ZipCode         string
// 	Address         string
// 	Tel             string
// 	Parking         string
// 	AccessInfo      string
// 	StampImageUrl   string
// 	IsActive        bool
// 	Stayable        bool //宿泊施設かどうか
// 	QRCode          uuid.UUID
// 	UnLimitedQRCode uuid.UUID
// }