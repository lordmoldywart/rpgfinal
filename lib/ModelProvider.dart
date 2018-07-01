import 'package:flutter/widgets.dart';
import 'package:rpgfinal/Model.dart';

class ModelProvider extends InheritedWidget {
  final Model model;

  ModelProvider({
    Key key,
    Model model,
    Widget child,
  })  : model = model ?? Model(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static Model of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(ModelProvider) as ModelProvider)
          .model;
}