import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> with _BlocLifecycle {
  ProfileBloc() : super(ProfileState()) {
    on<ProfileIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<ProfileDoLogouttEvent>((event, emit) async {
      await AuthService().logoutAccount();
      Get.offAll(LoginView());
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
