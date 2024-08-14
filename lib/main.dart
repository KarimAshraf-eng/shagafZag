import 'package:shagaf_zag/Core/Barrel/imports.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return MaterialApp.router(
          routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
      );
      },
    );
  }
}