import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// estado => isDarkmodeProvider =  boolean
final isDarkmodeProvider = StateProvider( (ref) => false );

//Listado de colors
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);


final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(), 
);


class ThemeNotifier extends StateNotifier<AppTheme>{
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkmode(){
    state = state.copyWith( isDarkmode: !state.isDarkmode );
  }

  void changeColorIndex( int colorIndex){
    state = state.copyWith( selectedColor: colorIndex );
  }


}


