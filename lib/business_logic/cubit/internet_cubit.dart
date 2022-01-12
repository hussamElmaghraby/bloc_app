import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  StreamSubscription? connectivityStearmConnectivity;

  InternetCubit({
    required this.connectivity,
    // required this.connectivityStearmConnectivity,
  }) : super(InternetLoading()) {
    monitorInternetConnection();
  }

  void emitInternetConnected(ConnectionType connectionType) =>
      emit(InternetConnected(connectionType: connectionType));

  void emitInternetDisconnected() => emit(InternetDisConnected());

  void monitorInternetConnection() {
    connectivityStearmConnectivity =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emit(InternetConnected(connectionType: ConnectionType.Wifi));
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emit(InternetConnected(connectionType: ConnectionType.Mobile));
      } else if (connectivityResult == ConnectivityResult.none) {
        emit(InternetDisConnected());
      }
    });
  }

  @override
  Future<void> close() {
    connectivityStearmConnectivity?.cancel();
    return super.close();
  }

  // StreamSubscription? listen(Null Function(dynamic internetState) param0) {}
}
