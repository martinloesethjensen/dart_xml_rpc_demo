import 'package:xml_rpc/simple_server.dart' as server;

main() async {
  const url = '127.0.0.1';
  const port = 8080;
  final handler = server.XmlRpcHandler(methods: {
    'sum': (params) {
      var sum = 0;
      params.forEach((value) => sum += value);
      print(sum);
      return 'Sum: $sum';
    }
  });
  final s = server.SimpleXmlRpcServer(host: url, port: port, handler: handler);
  await s.start();
  print('Starting server on port $port');
}
