import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sub7a/core/utils/colors.dart';

part 'store_count_state.dart';

class StoreCountCubit extends Cubit<StoreCountState> {
  StoreCountCubit() : super(StoreCountInitial());

  Color currentColor = red;
  int score = 33;
  int count = 0;
  int totalCounter = 0;
  int numberOfCounter = 0;

  saveColorData(int color) async{

      SharedPreferences prefsColor = await SharedPreferences.getInstance();
      prefsColor.setInt("color", color);

  }

  Future<int> getColorData() async{
    SharedPreferences prefsColor = await SharedPreferences.getInstance();

  return prefsColor.getInt("color") ?? red.value;
  }
}
