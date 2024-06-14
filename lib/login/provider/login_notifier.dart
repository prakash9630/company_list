import 'dart:developer';
import 'package:company_list/login/model/login_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repo/login_repo.dart';
import '../repo/login_state.dart';

final loginNotifierProvider =
    StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(ref);
});

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(this.ref) : super(LoginInitial());
  final Ref ref;

  Future<void> login(Map<String, dynamic> body) async {
    try {
      final response = await ref.read(loginRepoRepoProvider).login(body: body);

      state = response.fold((l) => LoginError(failure: l), (r) {
        LoginModel model = LoginModel.fromJson(r);
        return LoginSuccessState(model);
      });
    } catch (e) {
      log(e.toString());
    }
  }
}
