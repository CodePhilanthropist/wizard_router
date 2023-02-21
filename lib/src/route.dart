import 'dart:async';

import 'package:flutter/widgets.dart';

/// The signature of [WizardRoute.onNext] and [WizardRoute.onBack] callbacks.
typedef WizardRouteCallback = String? Function(RouteSettings settings);

/// The signature of [WizardRoute.onDone] callback.
typedef WizardDoneCallback = FutureOr<void> Function(Object? result);

class WizardRoute {
  const WizardRoute({
    required this.builder,
    this.onNext,
    this.onReplace,
    this.onBack,
    this.onDone,
    this.userData = const {},
  });

  final WidgetBuilder builder;

  /// The callback invoked when the next page is requested.
  ///
  /// If `onNext` is not specified or it returns `null`, the order is determined
  /// from [routes].
  final WizardRouteCallback? onNext;

  /// The callback invoked when a replacement page is requested.
  ///
  /// If `onReplace` is not specified or it returns `null`, the order is
  /// determined from [routes].
  final WizardRouteCallback? onReplace;

  /// The callback invoked when the previous page is requested.
  ///
  /// If `onBack` is not specified or it returns `null`, the order is determined
  /// from [routes].
  final WizardRouteCallback? onBack;

  /// The callback invoked when the wizard is done.
  final WizardDoneCallback? onDone;

  /// Additional custom data associated with this page.
  final Map<String, dynamic> userData;
}
