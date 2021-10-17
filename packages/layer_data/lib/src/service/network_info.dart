import 'package:connectivity_plus/connectivity_plus.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements INetworkInfo {
  Connectivity connectivity;
  NetworkInfo({
    required this.connectivity,
  });

  @override
  Future<bool> get isConnected async {
    var connectivityResult = await (connectivity.checkConnectivity());

    return connectivityResult != ConnectivityResult.none;
  }
}
