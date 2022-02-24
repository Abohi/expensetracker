import 'package:auto_route/annotations.dart';
import 'package:expensetracker/pages/dashboard_pages/dashboard/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    const AutoRoute(page: DashBoardPage, initial: true),
  ],
)
class $AppRouter {}