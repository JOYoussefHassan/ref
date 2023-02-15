/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| syntax |
----------
$("_element_, _element_ ...", {_pram_: _value_, ...})._action_._action_....;                                        ===> _element_ can be (document, this, ._class_, #_id_, _element_), can add after _element_:contains("_data_")

$("_element_, _element_ ...", {_pram_: _value_, ...})                                                               ===> to get element

[001] - _func_
function() _statement_
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| built_in action |
-------------------
[001] - ready(_func_)                                                                                               ===> can be as $(_func_)
[002] - css({"_pram_": "_value_", ...})

[003] - click(_func_)
[004] - dblclick(_func_)
[005] - mouseenter(_func_)
[006] - mouseleave(_func_)
[007] - hover(_func_, _func_)                                                                                       ===> first is mouseenter and second is mouseleave

[008] - hide(_intSpeed_, _func_)                                                                                    ===> _intSpeed_ default is 400 miliseconds
[009] - show(_intSpeed_, _func_)
[010] - toggle(_intSpeed_, _func_)

[011] - fadeIn(_intSpeed_, _func_)                                                                                  ===> as show()
[012] - fadeOut(_intSpeed_, _func_)                                                                                 ===> as hide()
[013] - fadeToggle(_intSpeed_, _func_)                                                                              ===> as toggle()
[014] - fadeTo(_intSpeed_, _intOpactiy_, _func_)

[015] - slideDown(_intSpeed_, _func_)                                                                               ===> as show()
[016] - slideUp(_intSpeed_, _func_)                                                                                 ===> as hide()
[017] - slideToggle(_intSpeed_, _func_)                                                                             ===> as toggle()

[018] - animate({_pram_: _value_, ...}, _intSpeed_, _func_)                                                         ===> _value_ can start with (+= or ...) to override
[019] - stop(_boolBreak_, _boolEnd_)                                                                                ===> _boolBreak_ to stop continue to the second animation, _boolEnd_ to go to end of animation

[020] - text()
[021] - text(_data_)
[022] - html()
[023] - html(_data_)
[024] - val(_data_)                                                                                                 ===> to set value of the input
[025] - val()
[026] - attr("_pram_")
[027] - attr({"_pram_": "_value_", ...})

[028] - append("_data_")
[029] - prepend("_data_")
[030] - before("_data_")                                                                                            ===> before parent element
[031] - after("_data_")
[032] - appendTo("_element_")
[033] - prepend("_element_")

[034] - remove()
[035] - empty()

[036] - addClass("_class_ _class_ ...")
[037] - removeClass("_class_ _class_ ...")
[038] - toggleClass("_class_ _class_ ...")

[039] - width()
[040] - width(_intWidth_)                                                                                           ===> _intWidth_ to add to original width
[041] - innerWidth()
[042] - innerWidth(_intWidth_)                                                                                      ===> _intWidth_ to add to original width
[043] - outerWidth()
[044] - outerWidth(_intWidth_)                                                                                      ===> _intWidth_ to add to original width
[045] - height()
[046] - height(_intHeight_)                                                                                         ===> _intHeight_ to add to original height
[047] - innerHeight()
[048] - innerHeight(_intHeight_)                                                                                    ===> _intHeight_ to add to original height
[049] - outerHeight()
[050] - outerHeight(_intHeight_)                                                                                    ===> _intHeight_ to add to original height

[051] - parent()
[052] - parents("_element_")
[053] - parentsUntil("_element_")
[054] - children("_element_")
[055] - find("element")
[056] - siblings()                                                                                                  ===> the other children
[057] - next()                                                                                                      ===> the next children
[058] - nextAll()
[059] - nextAll('_element_')
[060] - nextUntil('_element_')
[061] - prev()                                                                                                      ===> the previous children
[062] - prevAll('_element_')
[063] - prevUntil('_element_')
[064] - first()
[065] - last()
[066] - eq(_intIndex_)
[067] - filter('_element_' or _intIndex_)
[068] - not('_element_' or _intIndex_)

[069] - bind('_event_ ...', _func_)

        bind('_eventCustom_', function(event, _pram_, ...) {...})
        $('_selector_).trigger('_eventCustom_', [_pram_, ...])

        bind({_event_: _func_, ...})
[069] - live('_event_', _func_)
[070] - delegate('_selectorChild_', '_event_', _func_)
[070] - on('_event_ ...', '_selectorChild_', _func_)                                                                ===> we use this only, the _selectorChild_ is optional

        on('_eventCustom_', '_selectorChild_', function(event, _pram_, ...) {...})
        $('_selector_).tigger('_eventCustom_', [_pram_, ...])

        on({_event_: _func_, ...})
[071] - one('_event_ ...', '_selectorChild_', _func_)                                                               ===> we use this only, the _selectorChild_ is optional

        one('_eventCustom_', '_selectorChild_', function(event, _pram_, ...) {...})
        $('_selector_).tigger('_eventCustom_', [_pram_, ...])

        one({_event_: _func_, ...})
[072] - select('_event_', _func_)

[000] - insertAfter('_selector_')
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _selector_ |
--------------
[001] - *
[002] - _selector_ _selector_                                                                                       ===> all _selector_ in _selector_
[003] - _element_
[004] - this
[005] - ._class_
[006] - #_id_
[007] - _selector_, _selector_
[008] - _selector_:first
[009] - _selector_:last
[010] - _selector_:odd
[011] - _selector_:even
[012] - _selector_:first-child
[013] - _selector_:last-child
[014] - _selector_:first-of-type
[015] - _selector_:last-of-type
[016] - _selector_:nth-child(_index_)                                                                               ===> _index_ is start from zero
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| events |
----------
[1] - preventDefault()                                                                                              ===> prevent default action
[2] - isDefaultPrevented()
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| AJAX |
--------
[1] - $('_selector_').load('_path_', _func_)
      function(responseTxt, statusTxt, xhr) _statement_
[2] - $.get('_path_', _func_)
      function(data, status) _statement_
[2] - $.get('_path_', {_key_: '_value_', ...}, _func_)
      function(data, status) _statement_ 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/
$(document).ready(function(){

});