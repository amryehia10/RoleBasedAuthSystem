import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'layout_state.dart';
part 'layout_cubit.freezed.dart';

class LayoutCubit extends Cubit<LayoutState>{
  LayoutCubit() : super(const LayoutState.initial());

  int navBarIndex = 0;
  void changeNavBarIndex(int newIndex) {
    navBarIndex = newIndex;
    emit(LayoutState.changeNavBarIndex(navBarIndex));
  }
}