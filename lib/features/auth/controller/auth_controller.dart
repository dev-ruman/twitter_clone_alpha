import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:twitter_clone_alpha/apis/auth_api.dart';
import 'package:twitter_clone_alpha/core/utils.dart';

final AuthControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController(
    authAPI: ref.watch(authProvider),
  );
});

class AuthController extends StateNotifier<bool> {
  final AuthAPI _authAPI;
  AuthController({required AuthAPI authAPI})
      : _authAPI = authAPI,
        super(false);
  void signUp({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final response = await _authAPI.signUp(email: email, password: password);
    response.fold((l) {
      print(l.stackTrace);
      ShowSnackBar(context, l.string);
    }, (r) {
      print(r.name);
    });
  }
}
