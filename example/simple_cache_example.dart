import 'package:dcache/dcache.dart';

void main() {
  Cache c = new SimpleCache<String, int>(storage: new InMemoryStorage<String, int>(20));

  c.set("key", 42);
  print(c.get("key")); // 42
  print(c.containsKey("unknown_key")); // false
  print(c.get("unknown_key")); // nil
}
