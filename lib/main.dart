import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricknmorty/common/theme_config.dart';
import 'package:ricknmorty/core/service/locator_service.dart';
import 'package:ricknmorty/presentation/bloc/all_characters/all_characters_cubit.dart';
import 'package:ricknmorty/presentation/pages/characters_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocatorService().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locator = LocatorService.locator;

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AllCharactersCubit>(
            create: (context) => locator<AllCharactersCubit>()..loadAllCharacters()),
      ],
      child: MaterialApp(
        home: const CharactersPage(),
        theme: ThemeConfig.appTheme,
      ),
    );
  }
}
