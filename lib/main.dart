import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'src/widgets/my_site_widget.dart';

void main() {
  setUrlStrategy(PathUrlStrategy()); 
  runApp(const MySiteWidget());
}
