// import 'package:flutter_dotenv/flutter_dotenv.dart';
// class Env {
//   static final String supabaseUrl = dotenv.env["SUPABASE_URL"];
//   static final String supabasekey = dotenv.env["SUPABASE_KEY"];
// }


import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final String supabaseUrl = dotenv.env['SUPABASE_URL']!;
  static final String supabaseKey = dotenv.env['SUPABASE_KEY']!;
}
