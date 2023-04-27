import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => AuthEmailWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => AuthEmailWidget(),
        ),
        FFRoute(
          name: 'Signin',
          path: '/signin',
          builder: (context, params) => SigninWidget(),
        ),
        FFRoute(
          name: 'otppage',
          path: '/otppage',
          builder: (context, params) => OtppageWidget(),
        ),
        FFRoute(
          name: 'Signup',
          path: '/signup',
          builder: (context, params) => SignupWidget(),
        ),
        FFRoute(
          name: 'Findproduct',
          path: '/findproduct',
          builder: (context, params) => FindproductWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Home') : HomeWidget(),
        ),
        FFRoute(
          name: 'orderhistory',
          path: '/orderhistory',
          builder: (context, params) => OrderhistoryWidget(),
        ),
        FFRoute(
          name: 'home1',
          path: '/home1',
          builder: (context, params) => Home1Widget(),
        ),
        FFRoute(
          name: 'cart',
          path: '/cart',
          builder: (context, params) => CartWidget(
            productDataCart: params.getParam('productDataCart', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'orderhistory2',
          path: '/orderhistory2',
          builder: (context, params) => Orderhistory2Widget(),
        ),
        FFRoute(
          name: 'paymentmethod',
          path: '/paymentmethod',
          builder: (context, params) => PaymentmethodWidget(),
        ),
        FFRoute(
          name: 'category',
          path: '/category',
          builder: (context, params) => CategoryWidget(),
        ),
        FFRoute(
          name: 'test',
          path: '/test',
          builder: (context, params) => TestWidget(),
        ),
        FFRoute(
          name: 'Favorite',
          path: '/favorite',
          builder: (context, params) => FavoriteWidget(),
        ),
        FFRoute(
          name: 'product',
          path: '/product',
          builder: (context, params) => ProductWidget(),
        ),
        FFRoute(
          name: 'test4',
          path: '/test4',
          builder: (context, params) => Test4Widget(),
        ),
        FFRoute(
          name: 'Cart1',
          path: '/cart1',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Cart1') : Cart1Widget(),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: 'ecommpage',
          path: '/ecommpage',
          builder: (context, params) => EcommpageWidget(),
        ),
        FFRoute(
          name: 'product_description',
          path: '/productDescription',
          builder: (context, params) => ProductDescriptionWidget(
            productData: params.getParam('productData', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'AuthEmail',
          path: '/authEmail',
          builder: (context, params) => AuthEmailWidget(),
        ),
        FFRoute(
          name: 'MyAddresses',
          path: '/myAddresses',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: MyAddressesWidget(),
          ),
        ),
        FFRoute(
          name: 'ReviewCheckout',
          path: '/reviewCheckout',
          builder: (context, params) => ReviewCheckoutWidget(),
        ),
        FFRoute(
          name: 'ReviewCart',
          path: '/reviewCart',
          builder: (context, params) => ReviewCartWidget(),
        ),
        FFRoute(
          name: 'Payment',
          path: '/payment',
          builder: (context, params) => PaymentWidget(),
        ),
        FFRoute(
          name: 'addAddress',
          path: '/addAddress',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AddAddressWidget(),
          ),
        ),
        FFRoute(
          name: 'MyPricingRules',
          path: '/myPricingRules',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: MyPricingRulesWidget(),
          ),
        ),
        FFRoute(
          name: 'EditAddress',
          path: '/editAddress',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EditAddressWidget(
              addID: params.getParam('addID', ParamType.int),
            ),
          ),
        ),
        FFRoute(
          name: 'editAddressCopy',
          path: '/editAddressCopy',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EditAddressCopyWidget(
              addID: params.getParam('addID', ParamType.int),
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
