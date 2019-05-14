import 'package:flutter/material.dart';

import 'ui/sliver_search_bar_no_padding.dart';
export 'ui/sliver_search_bar_no_padding.dart';

class FloatingSearchBarCustom extends StatelessWidget {
  FloatingSearchBarCustom({
    this.body,
    this.drawer,
    this.trailing,
    this.leading,
    this.endDrawer,
    this.controller,
    this.onChanged,
    this.title,
    this.decoration,
    this.onTap,
    this.baseStyle,
  });

  final Widget leading, trailing, body, drawer, endDrawer;

  final TextEditingController controller;

  final ValueChanged<String> onChanged;

  final InputDecoration decoration;
  final TextStyle baseStyle;

  final VoidCallback onTap;

  /// Override the search field
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      endDrawer: endDrawer,
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        shrinkWrap: false,
        slivers: <Widget>[
          SliverFloatingBarNoPadding(
            leading: leading,
            floating: true,
            backgroundColor: Colors.transparent,
            title: title ??
                TextField(
                  controller: controller,
                  style: baseStyle,
                  decoration: decoration ??
                      InputDecoration.collapsed(
                        hintText: "Search...",
                      ),
                  autofocus: false,
                  onChanged: onChanged,
                  onTap: onTap,
                ),
            trailing: trailing,
          )
        ],
      ),
    );
  }
}
