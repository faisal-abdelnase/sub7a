part of 'store_count_cubit.dart';

@immutable
sealed class StoreCountState {}

final class StoreCountInitial extends StoreCountState {}
final class StoreCountSucsess extends StoreCountState {}
final class StoreCountFailler extends StoreCountState {}
