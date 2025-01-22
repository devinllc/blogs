part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends RootStackRouter {
    @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
      AutoRoute(page: SplashRoute.page, path: "/", initial: true),
       AutoRoute(page: OnboardRoute.page),
       AutoRoute(page: AuthRoute.page),
       AutoRoute(page: LoginRoute.page),
       AutoRoute(page: SignupRoute.page),
        AutoRoute(page: GeneralRoute.page),
         AutoRoute(page: HomeDetailsRoute.page),
      ];
}
