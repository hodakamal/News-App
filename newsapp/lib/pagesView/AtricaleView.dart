// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// ignore: camel_case_types, must_be_immutable
class articleView extends StatefulWidget {
  String articalUrl;
  articleView({
    Key? key,
    required this.articalUrl,
  }) : super(key: key);
  @override
  State<articleView> createState() => _articleViewState();
}

// ignore: camel_case_types
class _articleViewState extends State<articleView> {
  // ignore: unused_field
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(margin: EdgeInsets.all(20),
        child: WebviewScaffold(url: widget.articalUrl)),
    );
  }
}
