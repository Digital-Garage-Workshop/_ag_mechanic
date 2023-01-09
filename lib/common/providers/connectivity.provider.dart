import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final connectivityStreamProvider = StreamProvider<ConnectivityResult>(
  (_) => Connectivity().onConnectivityChanged,
);

final connectivityProvider =
    StateProvider<ConnectivityResult>((_) => ConnectivityResult.none);
