import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:layer_domain/layer_domain.dart';

import 'package:ricknmorty/common/theme_config.dart';
import 'package:ricknmorty/pages/page_wrapper.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  // await ServiceProvider().init();
  ServiceProvider().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ServiceProvider serviceProvider = ServiceProvider();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharactersCubit>(
          create: (context) => serviceProvider.get<CharactersCubit>()..load(),
        ),
      ],
      child: MaterialApp(
        home: const PageWrapper(),
        theme: ThemeConfig.appTheme,
      ),
    );
  }
}
