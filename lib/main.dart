import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'portao.dart';
import 'tema/app_tema.dart';
// Troque pelos dados do SEU projeto Supabase
// (Project Settings > API Keys), como nas Aulas 07 e 09.
const supabaseUrl = 'https://wymnbntlhbfuhxricxpx.supabase.co';

const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind5bW5ibnRsaGJmdWh4cmljeHB4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODk3Nzc2NzUsImV4cCI6MjEwNTM1MzY3NX0.fvXUllO6JbrGWW94z_fnx0UNHvSPh2Hypoi_VN4jmFo';
Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Supabase.initialize(
url: supabaseUrl,
anonKey: supabaseAnonKey,
);
runApp(const MainApp());
}
class MainApp extends StatelessWidget {
const MainApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Registro de Ocorrência',
theme: AppTema.claro, // <- o arquivo de estilizações
home: const Portao(),
);
}
}