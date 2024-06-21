import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task_/cubits/navbar_states.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitialState());

  void toggleMenu(int _selectedIndex) {
    switch (_selectedIndex) {
      case 0:
        emit(NavBarHomeState());
        break;
      case 1:
        emit(NavBarFavState());
        break;
      case 2:
        emit(NavBarCartState());
        break;
      case 3:
        emit(NavBarProfileState());
        break;
      default:
        emit(NavBarHomeState());
    }
  }
}
