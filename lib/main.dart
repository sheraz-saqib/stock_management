import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searchfield/searchfield.dart';
import 'package:stock_management_system/Provider/ShowAndHideAppBar.dart';
import 'package:stock_management_system/Provider/ShowAndHideNavigation.dart';
import 'package:stock_management_system/Provider/ToggleProvider.dart';
import 'package:stock_management_system/Routes/Routes.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/App_text_style.dart';
import 'package:stock_management_system/Utils/Widgets/textField.dart';

void main() {
  runApp(const RootView());
}

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Toggleprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ShowAndHideNavigationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ShowAndHideAppBarProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            textTheme: const TextTheme(
                headlineSmall: AppTextStyle.headLineSmall,
                headlineMedium: AppTextStyle.headLineMedium,
                headlineLarge: AppTextStyle.headLineLarge)),
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.splash_view,
        onGenerateRoute: Routes.generateRoute,
        // home: SearchableDropdownExample(),
      ),
    );
  }
}

// class SearchableDropdownExample extends StatelessWidget {
//   List<dynamic> countries = [
//     "Pakistan",
//     "United States",
//     "Canada",
//     "India",
//     "China",
//     "Australia",
//     "Brazil",
//     "Germany",
//     "United Kingdom",
//     "France",
//     "Japan",
//     "Russia",
//     "South Africa",
//     "Mexico",
//     "Italy"
//   ];

//   SearchableDropdownExample({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.bodyColor,
//       appBar: AppBar(title: const Text('Searchable Dropdown Example')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: AppTextFields.serachDropDown(
//             context: context,
//             dropDrownList: countries,
//             onChanged: (val) {
//               print(val);
//             }),
//       ),
//     );
//   }
// }
