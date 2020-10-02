import 'package:xml_rpc/client.dart' as client;

main() async {
  final port = 8080;
  final url = 'http://localhost:$port';
  try {
    await client
        .call(url, 'sum', [
          [13, 17]
        ])
        .then((result) => print(result))
        .catchError((error) => print(error));
  } catch (e) {
    print(e);
  }
}
