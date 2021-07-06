import '../../instagram_private_api.dart';

abstract class InstaFeed<T, K> {
  InstaClient client;
  InstaFeed(this.client);


  T _state;

  bool moreAvailable = false;

  void setState(T state);

  Future<T> request();

  List<K> transform(T state);

  Stream<K> stream() async* {
    do {
      _state = await request();
      setState(_state);
      yield* Stream.fromIterable(transform(_state));
    } while(moreAvailable);
  }
}