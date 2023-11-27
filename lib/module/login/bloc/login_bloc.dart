import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/core.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class LoginBloc extends Bloc<LoginEvent, LoginState> with _BlocLifecycle {
  LoginBloc() : super(LoginState()) {
    on<LoginIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<LoginButtonEvent>((event, emit) async {
      bool isLoggedIn = await AuthService()
          .login(email: state.email, password: state.password);
      if (isLoggedIn) {
        Get.offAll(MainNavigationView());
        return;
      } else {
        print("Wrong email or password!");
      }
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }
}
