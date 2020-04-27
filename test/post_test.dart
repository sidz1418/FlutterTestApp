import 'package:TestsApp/Post.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock implements http.Client {}

main() {
  group('fetchPost checks : ', () {
    test('Success response', () {
      final client = MockClient();

      when(client.get('https://jsonplaceholder.typicode.com/posts/1')).thenAnswer((_) async => http.Response('{"title":"test"}',200));

      expect(fetchPost(client), completion(isA<Post>()));
    });
    test('Failure response', () {
      final client = MockClient();

      when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
          .thenAnswer((_) async => http.Response('Nope', 400));

      expect(fetchPost(client), throwsException);
    });
  });
}
