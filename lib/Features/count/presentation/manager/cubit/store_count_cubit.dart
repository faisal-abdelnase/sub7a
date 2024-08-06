import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:sub7a/core/utils/colors.dart';

part 'store_count_state.dart';

class StoreCountCubit extends Cubit<StoreCountState> {
  StoreCountCubit() : super(StoreCountInitial());

  Color currentColor = red;
  int score = 0;
  int count = 0;
}
