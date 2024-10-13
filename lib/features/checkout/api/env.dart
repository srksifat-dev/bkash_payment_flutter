
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env")
final class Env{
  @EnviedField(varName: "username", obfuscate: true)
  static final String username = _Env.username;
  @EnviedField(varName: "password", obfuscate: true)
  static final String password = _Env.password;
  @EnviedField(varName: "app_key", obfuscate: true)
  static final String app_key = _Env.app_key;
  @EnviedField(varName: "app_secret", obfuscate: true)
  static final String app_secret = _Env.app_secret;
}