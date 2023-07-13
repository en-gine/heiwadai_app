class User {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.firstNameKana,
    required this.lastNameKana,
    this.companyName,
    this.birthDate,
    this.zipCode,
    required this.prefecture,
    this.city,
    this.address,
    this.tel,
    required this.mail,
    required this.acceptMail,
  });
  final String id;
  final String firstName;
  final String lastName;
  final String firstNameKana;
  final String lastNameKana;
  final String? companyName;
  final DateTime? birthDate;
  final String? zipCode;
  final String prefecture;
  final String? city;
  final String? address;
  final String? tel;
  final String mail;
  final bool acceptMail;
}

// type User struct {
// 	ID            uuid.UUID
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
// 	AcceptMail    bool
// }