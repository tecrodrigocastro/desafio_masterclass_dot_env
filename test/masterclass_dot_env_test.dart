import 'package:masterclass_dot_env/masterclass_dot_env.dart';
import 'package:test/test.dart';

void main() {
  test('dot env service ...', () {
    final service = dotEnv();
    expect(dotEnv(), 42);
  });
}
