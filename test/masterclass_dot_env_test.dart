import 'package:masterclass_dot_env/masterclass_dot_env.dart';
import 'package:test/test.dart';

void main() {
  test('dot env service ...', () {
    final service = dotEnv();
    expect(service['DATABASE_URL'],
        '"postgresql://postgres:postgres@localhost:5432/fteam"');
  });
}
