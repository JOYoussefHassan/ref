/*
+---------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------
| file: pubspec.yamel |
+---------------------+
name: _appName_
flutter:
  uses-material-design: _bool_                                                                                      ===> default is `true`
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------
| custom classes: _intent_ |
+--------------------------+
class _intentName_Intent extends Intent {
  const _intentName_Intent(...);
}
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------
| custom classes: _action_ |
+--------------------------+
class _actionName_Action extends Action<_intentName_Intent> {
  _intentName_Intent(...);

  @override
  Object? invoke(covariant _intentName_Intent intent) {
    return _Object_;
  }
}
+------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------
| custom classes: _dispatcher_ |
+------------------------------+
class _dispatcherName_Dispatcher extends ActionDispatcher {
  const _dispatcherName_Dispatcher(...);

  @override
  Object? invokeAction(covariant Action<Intent> action, covariant Intent intent, [BuildContext? context]) {
    return _Object_;
  }

  @override
  (bool, Object?) invokeActionIfEnabled(covariant Action<Intent> action, covariant Intent intent, [BuildContext? context]) {
    return (_bool_, _Object_);
  }
}
+--------------------------------+------------------------------------------------------------------------------------------------------------------------------------------
| custom classes: _flowDelegate_ |
+--------------------------------+
class _flowDelegateName_FlowDelegate extends FlowDelegate {
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
+-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------
| media controller: _mediaController_ |
+-------------------------------------+
--- await rootBundle.loadString('_filePath_')
--- AssetImage('_imagePath_')
+-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------
| widget context getter data: _widgetControllerContext_ |
+-------------------------------------------------------+
--- Theme
--- Scrollable
--- MediaQuery
--- DeviceOrientation
--- View.maybeOf(context)                                                                                    ===> get display data
--- showDialog(context: context, builder: (context) => _widgetDialog_Dialog)
--- Scaffold
--- ScaffoldMessenger.of(context).showSnackBar(SnackBar(                                                     ===> bottom snakbar
      content: _widget_,
      action: SnackBarAction(
        label: '_data_',
        onPressed: () => ...,
      ),
    ))
    ScaffoldMessenger.of(context).removeCurrentSnackBar()
--- KeyEventResult
--- Focus.of(context)
--- _formKeyController.currentState!.validate()
--- Actions.of(context).invokeAction(Actions.maybeFind<_intentName_Intent>(context), _intentName_Intent(...))
    Actions.maybeInvoke<_intentName_Intent>(context, _intentName_Intent(...))
    Actions.handler<_intentName_Intent>(context, _intentName_Intent(...))
    Actions.invoke(context, _intentName_Intent(...))

--- await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _widget_,
        settings: RouteSettings(
          arguments: _Object_
        ),
      ),
    )
    Navigator.pushNamed(
      context,
      '/_urlPath_',
    )
    Navigator.pop(                                                                                              ===> inside custom widget
      context,
      '_data_',                                                                                                 ===> as `SnackBar`
    )
--- ModalRoute.of(context)!.settings.arguments as _datatype_

--- Scaffold.of(context).openDrawer()
+---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------
| widget controller: _widgetController_ |
+---------------------------------------+
late final _controllerTypeName_Controller_ _controllerVarName_Controller;

with _mixin_
---
---
---
---
---
---
--- SingleTickerProviderStateMixin<_widgetName_>
---

_initState_
--- _scrollController = ScrollController()
--- _tabController = TabController(length: _intLenghtTabs_, vsync: this)
--- _textEditingController = TextEditingController()
--- _focusNodeController = FocusNode()
--- _formKeyController = GlobalKey<FormState>()
--- _videoPlayerController = VideoPlayerController._method_
    _initVideoPlayerController = _videoPlayerController.initialize()
--- _animationController = AnimationController(
      vsync: this,
      duration: _Duration_,
    )
    _animationController._methodORProperty_
--- HardwareKeyboard.instance.addHandler((event) => ...)

_dispose_
--- _scrollController.dispose()
--- _tabController.dispose()
--- _textEditingController.dispose()
--- _focusNodeController = dispose()
--- _formKeyController.currentState?.dispose()
--- _videoPlayerController.dispose()
--- _animationController.dispose()
--- HardwareKeyboard.instance.removeHandler((event) => ...)
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
          floatingActionButton: _widgetFloatingActionButton_,
          appBar: _bar_,
            --- AppBar(
                  key: _key_,
                  title: _widgetText_,
                ),
            --- TabBar(
                  controller: _tabController,
                  tabAlignment: _TabAlignment_,
                  isScrollable: _bool_,
                  tabs: const [
                    Tab(
                      icon: _widgetIcon_,
                      text: '_data_',
                    ),
                    ...
                  ],
                )
          bottomNavigationBar: _widgetNavigationBar_,
          body: _widget_,
          drawer: _widgetDrawer_,
        ),
      ),
    )
--- MaterialApp(
      initialRoute: '_urlPath_',
      routes: {
        '_urlPath_': (context) => _widget_,
        ...
      },
    )
https://docs.flutter.dev/ui/navigation/deep-linking
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
      controller: __scrollController_,
      child: _widget_,
    )
--- DragableScrollableSheet(                                                                                        ===> to append scroll widget
      key: _key_,
      initialChildSize: _double_,
      minChildSize: _double_,
      maxChildSize: _double_,
      builder: (context, _scrollController) => _widget_,
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
        _widget_,
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
--- __scrollController_: ScrollController()
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
--- NavigationDrawer(
      children: [
        DrawerHeader(
          child: _widget_,
        ),
        const NavigationDrawerDestination(
          icon: _widgetIcon_,
          label: _widgetText_,
        ),
        ...
      ],
    )

enum _segmentEnumName_ { _enumVarName_, .... }
--- SegmentedButton<_segmentEnumName_>(
      selected: const {_segmentEnumName_._enumVarName_},
      onSelectionChanged: (p0) {},
      segments: const [
        ButtonSegment(
          icon: _widgetIcon_,
          value: _segmentEnumName_._enumVarName_,
        ),
        ...
      ],
    )
+-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------
| widget input: _widgetInput_ |
+-----------------------------+
--- Listener(
      onPointerSignal: (event) => ...,
      child: _widget_,
    )
--- MouseRegion(
      cursor: _SystemMouseCursors_,
      onEnter: (event) => ...,
      onExit: (event) => ...,
      onHover: (event) => ...,
      child: _widget_,
    )
--- GestureDetector(
      onTap: () => ...,
      child: _widget_,
    )
--- FocusableActionDetector(
      onFocusChange: (value) => ...,
      actions: <Type, Action<Intent>>{
        _intentName_Intent: _actionName_Action<Intent>(...),
        ...
      },
      child: _widget_,
    )
--- FocusTraversalGroup(                                                                 ===> To get more control over the order that widgets are focused on when the user tabs through
      child: _widget_,
    )
--- Focus(
      onKeyEvent: (node, event) => ...,
      child: _widget_,
    )
--- Shortcuts(
      shortcuts: <ShortcutActivator, Intent>{
        _shourtcutName_Activator(...): _intentName_Intent(...),
        ...
      },
      child: _widget_,
    )
--- CallbackShortcuts(
      bindings: <ShortcutActivator, VoidCallback>{
        _shourtcutName_Activator(...): () => ...,
        ...
      },
      child: _widget_,
    )
--- Actions(                                                                             ===> to activate action
      dispatcher: _dispatcherName_Dispatcher(...),
      actions: <Type, Action<Intent>>{
        _intentName_Intent: _actionName_Action<Intent>(...),
        ...
      },
      child: _widget_,
    )
go to top `Action`
https://docs.flutter.dev/ui/interactivity/actions-and-shortcuts#the-shortcutmanager

_form_
--- Form(
      key: GlobalKey<FormState>(),
      child: _widget_,
    )
--- FormField(
      builder: (field) => _widget_,
    )
--- Checkbox(
      checkColor: _Color_,
      fillColor: _Color_,
      onChanged: (value) => ...,
      value: _bool_,
    )
--- DropdownButton<_datatype_>(
      value: _data_,
      icon: _Icon_,
      elevation: _int_,
      style: _Style_,
      underline: _widget_,
      onChanged: (value) => ...,
      items: [_widget_, ...],
    )
--- _widgetTextButton_
--- _widgetFloatingActionButton_
--- _widgetIconButton_
--- _widgetElevatedButton_
--- _widgetCupertinoButton_
--- Slider(
      value: _double_,
      max: _double_,
      divisions: _double_,
      label: '_data_',
      onChanged: (value) => ...,
    )
--- Switch(
      value: _bool_,
      overlayColor: _Color_,
      trackColor: _Color_,
      thumbColor: _Color_,
      onChanged: (value) => ...,
    )
--- _widgetTextField_
--- _widgetTextFormField_

enum _radioEnumName_ { _enumVarName_, .... }
_radioEnumName_ _radioGroupName_ = _radioEnumName_._enumVarName_;
--- Radio<_radioEnumName_>(
      value: _radioEnumName_._enumVarName_,
      groupValue: _radioGroupName_,
      onChanged: (value) {
        setState(() {
          _radioGroupName_ = value;
        });
      },
    )
+-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------
| widget intractivity: _widgetIntractivity_ |
+-------------------------------------------+
--- Draggable<_datatype_>(
      data: _data_,
      feedback: _widget_,
      childWhenDragging: _widget_,
      child: _widget_,
    )
    LongPressDraggable<_datatype_>(
      data: _data_,
      dragAnchorStrategy: (draggable, context, position) => _Offset_,
      feedback: _widget_,
    )
--- DragTarget<_datatype_>(
      builder: (context, accepted, rejected) => _widget_,
      onAcceptWithDetails: (details) => ...,
    )
https://docs.flutter.dev/ui/interactivity/gestures/drag-outside#implement-drag-and-drop-between-apps    ===> outside the app

--- Dismissible(
      key: _key_,
      onDismissed: (direction) => ...,
      child: _widget_,
    )
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------
| widget assets: _widgetAssets_ |
+-------------------------------+
--- Image(image: AssetImage('_imagePath_'))
--- Image.network('_imageUrlPath_')
--- FadeInImage.memoryNetwork(
      placeholder: '_data_',
      image: '_imageUrlPath_',
    )
--- FadeInImage.assetNetwork(
      placeholder: '_data_',
      image: '_imageUrlPath_',
    )

import 'package:video_player/video_player.dart';
--- FutureBuilder(
      future: _initVideoPlayerController,
      builder: (context, snapshot) {
        return AspectRatio(
          aspectRatio: _videoPlayerController.value.aspectRatio,
          child: VideoPlayer(_videoPlayerController),
        );
      },
    )

https://docs.flutter.dev/ui/assets/asset-transformation
+---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------
| widget assets: _widgetNavigaor_ |
+---------------------------------+
--- DefaultTabController(
      length: _intLenght_,
      child: Scaffold(
        appBar: AppBar(
          _postion_: const TabBar(
            tabs: [
              Tab(icon: _widgetIcon_),
              ...
            ],
          ),
        ),
        body: TabBarView(
          children: [_widget_, ...],
        ),
      ),
    )

go to top Navigator

--- Drawer(
      child: _widget_,
    )
--- DrawerHeader(
      child: _widget_,
    )
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------
| app settings: _settings_ |
+--------------------------+
--- Theme(
      visualDensity: VisualDensity(
        horizontal: _double_,
        vertical: _double_,
      ),
    )
--- Theme.of(context).copyWith(...)

import 'dart:io';
--- Platform.is_OS_
--- Platform.enviroment
*/

// animation (implicit which not controlled, explicit which controlled) ===> the core class is `Animation<_datatype_>`
/*
+------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------
| animation: _animation_ | ===> must in `StatefulWidget`
+------------------------+
_animationBuiltin_
--- CurvedAnimation(
      parent: _animationController,
      curve: _animationCurve_,
    )
--- _tween_._methodAnimation_
--- _animationController

_animation_.addListener()
_animation_.addStatusListener()
_animation_.forward()
_animation_.value
+-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------
| animation curve: _animationCurve_ |
+-----------------------------------+
_widgetAnimationCurveCustom_
--- class _curveAnimationName_Curve extends Curve {
      const _curveAnimationName_Curve(...);

      @override
      double transform(double t) => _double_;
    }
+------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------
| widget implicit animation: _widgetAnimationImplicit_ | ===> using setState()
+------------------------------------------------------+
_widgetAnimationImplicitBuiltin_
--- AnimatedContainer(
      duration: _Duration_,
      onEnd: () => ...,
      child: _widget_,
    )
--- _widgetAnimatedOpacity_
--- _widgetAnimatedPadding_
--- _widgetAnimatedPositioned_
--- _widgetAnimatedSwitcher_                                                                        ===> must the child has _key_

_widgetAnimationImplicitTween_ (Tween<_datatype_>, ColorTween, IntTween, RectTween)                            ===> to be as variable `static tween = _Tween_`
--- _widgetTweenAnimationBuilder_                                                                   ===> `onEnd` to repeat

_widgetAnimationImplicitTween_.value
_animationController.value
+------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------
| widget explicit animation: _widgetAnimationExplicit_ |
+------------------------------------------------------+
_widgetAnimationExplicitBuiltin_Transition (AnimationController)
--- _widgetSizeTransition_
--- _widgetFadeTransition_
--- _widgetAlignTransition_
--- _widgetScaleTransition_
--- _widgetSlideTransition_
--- _widgetRotaionTransition_
--- _widgetPositionedTransition_
--- _widgetDecoratedBoxTransition_
--- _widgetDefaultTextStyleTransition_
--- _widgetRelativePositionedTransition_

_widgetAnimationExplicitCustom_ (CustomPainter)
--- class _animatedWidgetName_AnimatedWidget extends AnimatedWidget {
      const _animatedWidgetName_AnimatedWidget(
      ...,
        {
          super.key,
          required super.listenable,                                                                          ===> accept `_animation_`
          ...
        },
      );
    
      @override
      Widget build(BuildContext context) => _widget_;
    }
--- AnimatedBuilder(
      animation: _animation_,
      builder: (context, child) => _widget_,
    )
*/

// https://pub.dev/packages?q=is%3Aflutter-favorite
