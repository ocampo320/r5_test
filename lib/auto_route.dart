import 'package:auto_route/auto_route.dart';

import 'presentation/views/home_view.dart';


@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomeView, initial: true),
    
  ],
)
class $AppRouter {}
