import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'store_count_state.dart';

class StoreCountCubit extends Cubit<StoreCountState> {
  StoreCountCubit() : super(StoreCountInitial());
}
