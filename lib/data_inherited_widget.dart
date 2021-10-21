import 'package:flutter/material.dart';
import 'package:image_search/view_model.dart/pixabay_view_model.dart';

class ApiInheritedWidget extends InheritedWidget {
  final PixabayViewModel viewModel;

  const ApiInheritedWidget(
      {Key? key, required this.viewModel, required Widget child})
      : super(key: key, child: child);

  static ApiInheritedWidget of(BuildContext context) {
    final ApiInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<ApiInheritedWidget>();
    return result!;
  }

  @override
  bool updateShouldNotify(ApiInheritedWidget oldWidget) {
    return true;
  }
}
