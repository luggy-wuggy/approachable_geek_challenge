import 'package:riverpod/riverpod.dart';

class AccountInfoController extends StateNotifier<AccountInfoModel> {
  AccountInfoController()
      : super(AccountInfoModel(
          firstName: "Micah",
          lastName: "Smith",
          email: "micahsmith@gmail.com",
          bio:
              "Hi my name is Micah Smith. I am from Mesa but go to school in Salt Lake City. I make this drive all the time and have plenty",
          phoneNumber: 2082065039,
        ));

  Future updateFirstName(String firstName) async {
    state = AccountInfoModel(
      firstName: firstName,
      lastName: state.lastName,
      email: state.email,
      bio: state.bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updateLastName(String lastName) async {
    state = AccountInfoModel(
      firstName: state.firstName,
      lastName: lastName,
      email: state.email,
      bio: state.bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updateEmail(String email) async {
    state = AccountInfoModel(
      firstName: state.firstName,
      lastName: state.lastName,
      email: email,
      bio: state.bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updateBio(String bio) async {
    state = AccountInfoModel(
      firstName: state.firstName,
      lastName: state.lastName,
      email: state.bio,
      bio: bio,
      phoneNumber: state.phoneNumber,
    );
  }

  Future updatePhoneNumber(int phoneNumber) async {
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
  late final String? firstName;
  late final String? lastName;
  late final String? email;
  late final String? bio;
  late final int? phoneNumber;

  AccountInfoModel({
    this.firstName,
    this.lastName,
    this.email,
    this.bio,
    this.phoneNumber,
  });
}
