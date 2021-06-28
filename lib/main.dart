import 'package:flutter/material.dart';
import 'package:oficial_petti/Utils/param.dart';
import 'package:provider/provider.dart';

import 'all_screens.dart';

void main() {
  runApp(

    MultiProvider(
    providers: [
      Provider<Param>(
        create: (_) => Param(),
      ),
    ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllScreens(),
  ),
    ),
  );
}
