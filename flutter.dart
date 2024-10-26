/*
+---------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------
| file: pubspec.yamel |
+---------------------+
name: _appName_
flutter:
  uses-material-design: _bool_                                                                                      ===> default is `true`
+---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------
| widget controller: _widgetController_ |
+---------------------------------------+
--- ScrollController()
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
      key: _key_,
      style: _TextStyle_,
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
--- DecoratedBox(
      decoration: _BoxDecoration_,
      position: _DecorationPosition_,
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

--- OverflowBox(
      key: _key_,
      minWidth: _double_,
      minHeight: _double_,
      maxWidth: _double_,
      maxHeight: _double_,
      child: _widget_,
    )

--- LimitedBox(
      key: _key_,
      maxWidth: _double_,
      maxHeight: _double_,
      child: _widget_,
    )
--- FittedBox(
      key: _key_,
      child: _widget_,
    )

--- ConstrainedBox(
      key: _key_,
      constraints: _BoxConstraints_,                                                                                 ===> _BoxConstraints_ (nothing, loose, tight)
      child: _widget_,
    )
--- UnconstrainedBox(                                                                                                ===> to be the same size of screen
      key: _key_,
      child: _widget_,
    )
+------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------
| widget: _widgetLayout_ |
+------------------------+
--- Row(
      key: _key_,
      alignment: _Alignment_,
      mainAxisAlignment: _MainAxisAlignment_,
      crossAxisAlignment: _CrossAxisAlignment_,
      mainAxisSize: _MainAxisSize_,
      children: [_widget_, ...],
    )
--- Column(
      key: _key_,
      alignment: _Alignment_,
      mainAxisAlignment: _MainAxisAlignment_,
      crossAxisAlignment: _CrossAxisAlignment_,
      mainAxisSize: _MainAxisSize_,
      children: [_widget_, ...],
    )
--- Expanded(
      key: _key_,
      flex: _int_,
      child: _widget_,
    )
--- Flexible(
      key: _key_,
      child: _widget_,
    )
--- Align(
      key: _key_,
      alignment: _Alignment_,
      child: _widget_,
    )

--- Stack(
      key: _key_,
      fit: _StackFit_,
      alignment: _Alignment,
      children: [_widget_, ...],
    )

--- SizedBox(
      key: _key_,
      height: _double_,
      width: _double_,
      child: _widget_,
    )
--- SizedBox.expand(
      key: _key_,
      child: _widget_,
    )
--- IntrinsicHeight(
      child: _widget_,
    )

--- Card(
      key: _key_,
      child: _widget_,
    )

--- GridView.extent(
      key: _key_,
      padding: _EdgeInsets_,
      maxCrossAxisExtent: _double_,
      mainAxisSpacing: _double_,
      crossAxisSpacing: _double_,
      children: [_widget_, ...],
    )
--- GridView.count(
      key: _key_,
      crossAxisCount: _int_,
      children: [_widget_, ...],
    )

--- ListView(
      key: _key_,
      scrollDirection: _Axis_,
      reverse: _bool_,
      shrinkWrap: _bool_,
      addAutomaticKeepAlives: _bool_,                                                                           ===> to enable the animation when end of scroll
      cacheExtent: _double_,                                                                                    ===> to enable the animation when end of scroll
      physics: _ScrollPhysics_,
      children: [_widget_, ...],
    )
--- ListView.builder(
      key: _key_,
      scrollDirection: _Axis_,
      reverse: _bool_,
      shrinkWrap: _bool_,
      addAutomaticKeepAlives: _bool_,                                                                           ===> to enable the animation when end of scroll
      cacheExtent: _double_,                                                                                    ===> to enable the animation when end of scroll
      physics: _ScrollPhysics_,
      itemCount: _int_,
      itemBuilder: (context, index) => _widget_,
    )
--- ListView.custom(
      scrollDirection: _Axis_,
      reverse: _bool_,
      shrinkWrap: _bool_,
      addAutomaticKeepAlives: _bool_,                                                                           ===> to enable the animation when end of scroll
      cacheExtent: _double_,                                                                                    ===> to enable the animation when end of scroll
      physics: _ScrollPhysics_,
      childrenDelegate: _SliverChildDelegate_,                                                                  ===> _SliverChildDelegate_((context, index) => _widget_)
    )
--- Listiew.separated(
      scrollDirection: _Axis_,
      reverse: _bool_,
      shrinkWrap: _bool_,
      addAutomaticKeepAlives: _bool_,                                                                           ===> to enable the animation when end of scroll
      cacheExtent: _double_,                                                                                    ===> to enable the animation when end of scroll
      physics: _ScrollPhysics_,
      itemCount: _int_,
      itemBuilder: (context, index) => _widget_,
      separatorBuilder: (context, index) => _widget_,
    )
--- Devider()
--- ListTile(
      key: _key_,
      title: _widgetText_,
      subtitle: _widgetText_,
      leading: _widgetIcon_,
    )

--- LayoutBuilder(
      key: _key_,
      builder: (context, constraints) => _widget_,
    )
+------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------
| widget: _widgetScroll_ |
+------------------------+
--- Scrollbar(
      isAlwaysShown: _bool_,
      ShowTrackHover: _bool_,
      child: _widget_,
    )
--- SingleChildScrollView(
      controller: _scrollController_,
      child: _widget_,
    )
--- DragableScrollableSheet(                                                                                        ===> to append scroll widget
      initialChildSize: _double_,
      minChildSize: _double_,
      maxChildSize: _double_,
      builder: (context, scrollController) => _widget_,
    )
--- ListWheelScrollView(
      diameterRatio: _double_,
      offAxixFraction: _double_,
      useMagnifier: _bool_,
      magnification: _double_,
      itemExtent: _double_,
      children: [_widget_, ...],
    )
--- CustomScrollView(
      slivers: [...],
      children: [
        _widgetSliverList_,
        ...
      ],
    )
--- SliverList(
      childCount: _int_,
      delegate: _SliverChildDelegate_,
    )


--- _SliverChildDelegate_: SliverChildListDelegate, SliverChildBuilderDelegate
--- _scrollController_: ScrollController()
*/
