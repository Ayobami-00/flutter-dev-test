import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ui/AddStaff/ads_staff_page.dart';

void main() {
  runApp(
    // DevicePreview(
    // builder: (_) => 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddStaffPage(),
    ),
    // enabled: !kReleaseMode,
  // )
  );
}
