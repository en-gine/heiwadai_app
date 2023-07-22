class StayCustomer {
  const StayCustomer({
    required this.firstName,
    required this.lastName,
    required this.firstNameKana,
    required this.lastNameKana,
    required this.companyName,
    required this.birthDate,
    required this.zipCode,
    required this.prefecture,
    required this.city,
    required this.address,
    required this.tel,
    required this.mail,
  });
  final String firstName;
  final String lastName;
  final String firstNameKana;
  final String lastNameKana;
  final String companyName;
  final DateTime birthDate;
  final String zipCode;
  final String prefecture;
  final String city;
  final String address;
  final String tel;
  final String mail;
}

// // 宿泊者情報
// type StayCustomer struct {
// 	FirstName     string
// 	LastName      string
// 	FirstNameKana string
// 	LastNameKana  string
// 	CompanyName   *string
// 	BirthDate     time.Time
// 	ZipCode       *string
// 	Prefecture    string
// 	City          *string
// 	Address       *string
// 	Tel           *string
// 	Mail          string
// }
