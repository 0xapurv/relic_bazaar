import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  AdState(this.initialization);
  Future<InitializationStatus> initialization;

  // String get bannerAdUnitId => Platform.isAndroid?'ca-app-pub-1408860275796619~7877036507':'';
  String get bannerAdUnitId => 'ca-app-pub-3940256099942544/6300978111';

  AdListener get adListener => _adListener;

  AdListener _adListener = AdListener(
    onAdLoaded: (ad) => print('Ad loaded: ${ad.adUnitId}'),
    onAdClosed: (ad) => print('Ad closed: ${ad.adUnitId}'),
    onAdFailedToLoad: (ad, error) => print('Ad failed: ${ad.adUnitId}, $error'),
    onAdOpened: (ad) => print('Ad opener: ${ad.adUnitId}'),
  );
}