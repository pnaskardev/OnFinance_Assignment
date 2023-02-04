import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment
{
  static String get filename
  {
    return '.env.development';
  }

  static String get apiUrl
  {
    return dotenv.env['API_URL'] ?? 'API_URL_NOT_FOUND';
  }
}