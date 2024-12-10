/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ActivityFeed-Fiil.svg
  SvgGenImage get activityFeedFiil =>
      const SvgGenImage('assets/icons/ActivityFeed-Fiil.svg');

  /// File path: assets/icons/ActivityFeed.svg
  SvgGenImage get activityFeed =>
      const SvgGenImage('assets/icons/ActivityFeed.svg');

  /// File path: assets/icons/Add.svg
  SvgGenImage get add => const SvgGenImage('assets/icons/Add.svg');

  /// File path: assets/icons/Cancel.svg
  SvgGenImage get cancel => const SvgGenImage('assets/icons/Cancel.svg');

  /// File path: assets/icons/Comment.svg
  SvgGenImage get comment => const SvgGenImage('assets/icons/Comment.svg');

  /// File path: assets/icons/Edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/Edit.svg');

  /// File path: assets/icons/Home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/Home.svg');

  /// File path: assets/icons/Layout.svg
  SvgGenImage get layout => const SvgGenImage('assets/icons/Layout.svg');

  /// File path: assets/icons/Logout.svg
  SvgGenImage get logout => const SvgGenImage('assets/icons/Logout.svg');

  /// File path: assets/icons/Menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icons/Menu.svg');

  /// File path: assets/icons/Messenger.svg
  SvgGenImage get messenger => const SvgGenImage('assets/icons/Messenger.svg');

  /// File path: assets/icons/NewPosts.svg
  SvgGenImage get newPosts => const SvgGenImage('assets/icons/NewPosts.svg');

  /// File path: assets/icons/Save.svg
  SvgGenImage get save => const SvgGenImage('assets/icons/Save.svg');

  /// File path: assets/icons/Search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/Search.svg');

  /// File path: assets/icons/Settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/Settings.svg');

  /// File path: assets/icons/Share.svg
  SvgGenImage get share => const SvgGenImage('assets/icons/Share.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        activityFeedFiil,
        activityFeed,
        add,
        cancel,
        comment,
        edit,
        home,
        layout,
        logout,
        menu,
        messenger,
        newPosts,
        save,
        search,
        settings,
        share
      ];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/app_logo.svg
  SvgGenImage get appLogo => const SvgGenImage('assets/logo/app_logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [appLogo];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
