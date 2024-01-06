import 'package:protobufs/protobufs.dart';

class StubClass {
  SuppliersClient getStub() {
    final channel = ClientChannel(
      '10.0.2.2',
      port: 4000,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    final stub = SuppliersClient(channel);
    return stub;
  }
}
