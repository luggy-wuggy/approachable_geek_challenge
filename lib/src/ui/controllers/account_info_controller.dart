import 'package:riverpod/riverpod.dart';

class AccountInfoController extends StateNotifier<AccountInfoModel> {
  AccountInfoController({
    AccountInfoModel account = const AccountInfoModel(
      firstName: "Micah",
      lastName: "Smith",
      email: "micahsmith@gmail.com",
      bio:
          "Hi my name is Micah Smith. I am from Mesa but go to school in Salt Lake City. I make this drive all the time and have plenty",
      phoneNumber: 2082065039,
    ),
  }) : super(account);

  Future updateFirstName(String? firstName) async {
    if (firstName == state.firstName || firstName == null) return;

    state = AccountInfoModel(
      firstName: firstName,
      lastName: state.lastName,
      email: state.email,
      bio: state.bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updateLastName(String? lastName) async {
    if (lastName == state.lastName || lastName == null) return;

    state = AccountInfoModel(
      firstName: state.firstName,
      lastName: lastName,
      email: state.email,
      bio: state.bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updateEmail(String? email) async {
    if (email == state.email || email == null) return;

    state = AccountInfoModel(
      firstName: state.firstName,
      lastName: state.lastName,
      email: email,
      bio: state.bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updateBio(String? bio) async {
    if (bio == state.bio || bio == null) return;

    state = AccountInfoModel(
      firstName: state.firstName,
      lastName: state.lastName,
      email: state.bio,
      bio: bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updatePhoneNumber(int? phoneNumber) async {
    if (phoneNumber == state.phoneNumber || phoneNumber == null) return;

    state = AccountInfoModel(
      firstName: state.firstName,
      lastName: state.lastName,
      email: state.email,
      bio: state.bio,
      phoneNumber: phoneNumber,
    );
  }
}

final accountInfoProvider =
    StateNotifierProvider<AccountInfoController, AccountInfoModel>((ref) {
  return AccountInfoController();
});

class AccountInfoModel {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? bio;
  final int? phoneNumber;

  const AccountInfoModel({
    this.firstName,
    this.lastName,
    this.email,
    this.bio,
    this.phoneNumber,
  });
}
