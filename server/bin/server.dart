import 'dart:io';

import 'package:protobufs/protobufs.dart';
import 'package:server/services/supplier_service.dart';

void main(List<String> arguments) async {
  final server = Server.create(
    services: [
      SupplierService(),
    ], // services to communicate with gRPC
  );

  final port = int.parse(Platform.environment['PORT'] ?? '4000');
  await server.serve(
    port: port,
  );

  print('Server listening on port ${server.port}...🚀');
}
