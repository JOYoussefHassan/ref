/*
+---------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------
| file: pubspec.yamel |
+---------------------+
name: _appName_
flutter:
  uses-material-design: _bool_                                                                                      ===> default is `true`
+--------------------------------+------------------------------------------------------------------------------------------------------------------------------------------
| custom classes: _flowDelegate_ |
+--------------------------------+
class MyFlowDelegate extends FlowDelegate {
  const MyFlowDelegate({
    this.attribute = _valueDefault_,
    ...
    required this.attribute,
    ...
  });

  @override
  void paintChildren(FlowPaintingContext context) {
    context.childCount;
    ...
    context.paintChild(_intChildIndex_, transform: Matrix4.identity());
    context.paintChild(_intChildIndex_, transform: Matrix4.translationValues(50, 50, 0));
    ...
  }

  @override
  bool shouldRelayout(covariant FlowDelegate oldDelegate) {
    oldDelegate.attribute;
    ...
    return _bool_;
  };

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    oldDelegate.attribute;
    ...
    return _bool_;
  }
}
+-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------
| widget context getter data: _widgetControllerContext_ |
+-------------------------------------------------------+
--- Theme
--- Scrollable
--- MediaQuery
--- DeviceOrientation
--- ui.FlutterView.display
--- showDialog(context: context, builder: (context) => _widgetDialog_)
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
--- GlobalKey(debugLabel: '_data_')
+--------------------------------+------------------------------------------------------------------------------------------------------------------------------------------
| start widget: _widgetMaterial_ |
+--------------------------------+
--- MaterialApp(
      key: _key_,
      theme: _ThemeData_,
      title: '_data_',
      home: SafeArea(
        key: _key_,
        top: _bool_,
        botom: _bool_,
        right: _bool_,
        left: _bool_,
        child: Scaffold(
          key: _key_,
          appBar: AppBar(
            key: _key_,
            title: _widgetText_,
          ),
          bottomNavigationBar: _widgetNavigationBar_,
          body: _widget_,
        ),
      ),
    )
+---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------
| start widget: _widgetCupertino_ |
+---------------------------------+
--- CupertinoApp(
      key: _key_,
      theme: _CupertinoThemeData_,
      title: '_data_',
      home: SafeArea(
        key: _key_,
        top: _bool_,
        botom: _bool_,
        right: _bool_,
        left: _bool_,
        child: CupertinoNavigationBar(
          key: _key_,
          navigationBar: CupertinoNavigationBar(
          key: _key_,
          middle: _widgetText_,
        ),
          body: _widget_,
        ),
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
      key: _key_,
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
--- GridView.builder(
      gridDelegate: _SliverGridDelegate_,
      itemBuilder: (context, index) => _widget_,
    )

--- Dialog()                                                                                                    ===> full screen dialog
--- Dialog.fullscreen()

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
      key: _key_,
      scrollDirection: _Axis_,
      reverse: _bool_,
      shrinkWrap: _bool_,
      addAutomaticKeepAlives: _bool_,                                                                           ===> to enable the animation when end of scroll
      cacheExtent: _double_,                                                                                    ===> to enable the animation when end of scroll
      physics: _ScrollPhysics_,
      childrenDelegate: _SliverChildDelegate_,                                                                  ===> _SliverChildDelegate_((context, index) => _widget_)
    )
--- Listiew.separated(
      key: _key_,
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
--- Devider(
      key: _key_,
    )
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


--- SliverGridDelegate: SliverGridDelegateWithFixedCrossAxisCount, SliverGridDelegateWithMaxCrossAxisExtent
+------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------
| widget: _widgetScroll_ |
+------------------------+
--- Scrollbar(
      key: _key_,
      isAlwaysShown: _bool_,
      ShowTrackHover: _bool_,
      child: _widget_,
    )
--- SingleChildScrollView(
      key: _key_,
      controller: _scrollController_,
      child: _widget_,
    )
--- DragableScrollableSheet(                                                                                        ===> to append scroll widget
      key: _key_,
      initialChildSize: _double_,
      minChildSize: _double_,
      maxChildSize: _double_,
      builder: (context, scrollController) => _widget_,
    )
--- ListWheelScrollView(
      key: _key_,
      diameterRatio: _double_,
      offAxixFraction: _double_,
      useMagnifier: _bool_,
      magnification: _double_,
      itemExtent: _double_,
      children: [_widget_, ...],
    )
--- CustomScrollView(
      key: _key_,
      slivers: [
        _widgetSliverList_,
        ...
      ],
    )
--- SliverList(
      key: _key_,
      childCount: _int_,
      delegate: _SliverChildDelegate_,
    )
--- SliverAppBar(
      key: _key_,
      title: _widget_,
      floating: _bool_,
      expandedHeight: _double_,                                                                                          ===> to change widget background by `FlexableSpaceBar`
      collapsedHeight: _double_,
      flexableSpace: FlexableSpaceBar(
        background: _widget_,
      ),
    )
--- SliverGrid.count(
      childAxisCount: _int_,
      children: [
        _widget_,
        ...
      ],
    )
--- SliverGrid.extent(
      childAxisExtent: _double_,
      children: [
        _widget_,
        ...
      ],
    )
--- FLow(                                                                                                      ===> fixed position widget
      delegate: _flowDelegateName_(...),
      children: [
        _widget_,
        ...
      ],
    )


--- _SliverChildDelegate_: SliverChildListDelegate, SliverChildBuilderDelegate
--- _scrollController_: ScrollController()
+----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------
| widget adaptive design: _widgetDesign_ |
+----------------------------------------+
--- NavigationBar(
      selectedIndex: _int_,
      onDestinationSelected: (index) => ...,
      destinations: [
        NavigationDestination(
          icon: _widgetIcon_,
          label: '_data_',
        ),
        ...
      ],
    )
--- NavigationRail(
      selectedIndex: _int_,
      onDestinationSelected: (index) => ...,
      destinations: [
        NavigationRailDestination(
          icon: _widgetIcon_,
          label: '_data_',
        ),
        ...
      ],
    )
*/
