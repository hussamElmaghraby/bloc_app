part of 'internet_cubit.dart';

enum ConnectionType {
  // ignore: constant_identifier_names
  Wifi,
  // ignore: constant_identifier_names
  Mobile
}

@immutable
abstract class InternetState {}

class InternetLoading extends InternetState {}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;

  InternetConnected({required this.connectionType});
}

class InternetDisConnected extends InternetState {}
