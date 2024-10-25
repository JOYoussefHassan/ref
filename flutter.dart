/*
+---------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------
| file: pubspec.yamel |
+---------------------+
name: _appName_
flutter:
  uses-material-design: _bool_                                                                                      ===> default is `true`
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------
| widget identifier: _key_ |
+--------------------------+
--- Key(
      '_data_',
    )
--- ValueKey(
      _data_,
    )
+--------------------------------+------------------------------------------------------------------------------------------------------------------------------------------
| start widget: _widgetMaterial_ |
+--------------------------------+
--- MaterialApp(
      key: _key_,
      theme: _ThemeData_,
      title: '_data_',
      home: Scaffold(
        key: _key_,
        appBar: AppBar(
          key: _key_,
          title: _widgetText_,
        ),
        body: _widget_,
      ),
    )
+---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------
| start widget: _widgetCupertino_ |
+---------------------------------+
--- CupertinoApp(
      key: _key_,
      theme: _CupertinoThemeData_,
      title: '_data_',
      home: CupertinoPageScaffold(
        key: _key_,
        navigationBar: CupertinoNavigationBar(
          key: _key_,
          middle: _widgetText_,
        ),
        body: _widget_,
      ),
    )
+-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------
| widget: _widgetBasic_ |
+-----------------------+
--- Text(
      '_data_',
      style: _TextStyle_,
      key: _key_,
    )
--- Container(
      key: _key_,
      decoration: _BoxDecoration_,
      margin: _EdgeInsets_,
      padding: _EdgeInsets_,
      height: _double_,
      width: _double_,
      child: _widget_,
    )
--- Center(
      key: _key_,
      child: _widget_,
    )
--- Stack(
      key: _key_,
      children: [
        _widget_,
      ],
    )
+------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------
| widget: _widgetLayout_ |
+------------------------+
--- Row(
      key: _key_,
      alignment: _Alignment,
      mainAxisAlignment: _MainAxisAlignment_,
      mainAxisSize: _MainAxisSize_,
      children: [_widget_, ...],
    )
--- Column(
      key: _key_,
      alignment: _Alignment,
      mainAxisAlignment: _MainAxisAlignment_,
      mainAxisSize: _MainAxisSize_,
      children: [_widget_, ...],
    )
--- Expanded(
      key: _key_,
      flex: _int_,
      child: _widget_,
    )

--- Stack(
      alignment: _Alignment,
      children: [_widget_, ...],
    )

--- SizedBox(
      height: _double_,
      width: _double_,
      child: _widget_,
    )

--- Card(
      child: _widget_,
    )

--- GridView.extent(
      padding: _EdgeInsets_,
      maxCrossAxisExtent: _double_,
      mainAxisSpacing: _double_,
      crossAxisSpacing: _double_,
      children: [_widget_, ...],
    )

--- ListView(
      children: [_widget_, ...],
    )
--- ListTile(
      title: _widgetText_,
      subtitle: _widgetText_,
      leading: _widgetIcon_,
    )
*/
