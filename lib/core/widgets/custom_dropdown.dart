import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/constants.dart';
import '../theming/colors.dart';
import '../theming/fonts.dart';
import 'default_box_shadow.dart';

class CustomDropdown<T> extends StatefulWidget {
  final void Function(T, int) onChange;
  final void Function()? onTap;
  final List<CustomDropdownItem<T>> items;
  final int index;
  final double width;
  final double height;
  final double radius;
  final String text;
  final bool showText;
  final bool isWithCheck;
  final EdgeInsetsGeometry? dropdownPadding;
  final double? arrowRightPadding;
  final double optionsYOffset;
  final double? optionsContainerWidth;
  final double? optionsContainerHeight;
  final Color? optionsContainerColor;
  final double? optionsPaddingLeft;
  final double? optionsPaddingRight;
  final double paddingLeft;
  final double paddingRight;
  final bool isCheckedBox;
  final bool hasBColor;
  final List<String> listOfValues;
  final Border? border;
  final double optionMarginRight;
  final Color? textColor;
  const CustomDropdown({
    required Key key,
    required this.items,
    required this.onChange,
    this.isWithCheck = true,
    this.hasBColor = true,
    this.radius = 7,
    this.optionsYOffset = 50,
    this.border,
    this.optionsContainerWidth,
    this.optionsContainerHeight,
    this.optionsPaddingLeft,
    this.optionsPaddingRight,
    this.dropdownPadding,
    this.arrowRightPadding,
    required this.index,
    required this.text,
    this.height = 48,
    this.showText = true,
    this.width = double.infinity,
    this.paddingLeft = 16,
    this.paddingRight = 16,
    this.isCheckedBox = false,
    this.onTap,
    required this.listOfValues,
    this.optionMarginRight = 35,
    this.optionsContainerColor,
    this.textColor,
  }) : super(key: key);

  @override
  CustomDropdownState<T> createState() => CustomDropdownState<T>();
}

class CustomDropdownState<T> extends State<CustomDropdown<T>>
    with TickerProviderStateMixin {
  final ScrollController scrollController = ScrollController();
  final LayerLink _layerLink = LayerLink();
  final TextEditingController searchController = TextEditingController();
  late OverlayEntry _overlayEntry;
  bool isOpen = false;
  int selected = 20;
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;

  double get screenWidth => AppConstants.screenSize(context).width;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    selected = widget.index;
  }

  @override
  dispose() {
    _animationController.dispose(); // you need this
    super.dispose();
  }

  void closeBottomSheet() {
    _toggleDropdown(close: true);
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap!();
          }
          if (widget.listOfValues.isNotEmpty) {
            _toggleDropdown();
          }
        },
        child: Stack(
          children: [
            Container(
              height: 48,
              margin: EdgeInsets.only(
                left: widget.paddingLeft,
                right: widget.paddingRight,
              ),
              padding: EdgeInsets.only(
                right: widget.arrowRightPadding ?? 12, // arrow right padding
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: widget.border ??
                    Border.all(
                      color: AppColors.grey400,
                    ),
                boxShadow: defaultBoxShadow(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 400),
                    turns: isOpen ? 0.5 : 1,
                    child: SvgPicture.asset(
                      "assets/images/icons/dropdown_arrow.svg",
                    ),
                  ),
                ],
              ),
            ),
            if (widget.showText)
              Padding(
                padding: widget.dropdownPadding ??
                    const EdgeInsets.only(
                      top: 14,
                      left: 16,
                    ),
                child: Text(
                  widget.text,
                  style: AppFonts.inter15Black400,
                ),
              ),
            Padding(
              padding: widget.dropdownPadding ??
                  const EdgeInsets.only(
                    top: 14,
                    left: 16,
                  ), // padding text inside dropdown
              child: Row(
                children: [
                  if (widget.index > widget.items.length || widget.index == -1)
                    Text(
                      widget.text,
                      style: AppFonts.inter15Black400,
                    )
                  else
                    SizedBox(
                      child: Text(
                        widget.showText
                            ? ''
                            : widget.index != 6
                                ? widget.listOfValues[widget.index]
                                : widget.text,
                        maxLines: 1,
                        style: widget.index != 6
                            ? AppFonts.inter15Black400
                            : AppFonts.inter15buttonGreyBorder400,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () {
          _toggleDropdown(close: true);
        },
        behavior: HitTestBehavior.deferToChild,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            CompositedTransformFollower(
              offset: Offset(
                0,
                widget.optionsYOffset,
              ), //offset for options container
              link: _layerLink,
              showWhenUnlinked: false,
              child: Container(
                width: widget.optionsContainerWidth ?? double.infinity,
                //Container Contain Options
                height: widget.optionsContainerHeight ??
                    widget.listOfValues.length * 47,
                margin: EdgeInsets.only(
                  left: widget.paddingLeft,
                  right: widget.optionMarginRight,
                ),
                padding: const EdgeInsets.only(bottom: 5),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: widget.optionsContainerColor ?? AppColors.grey400,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: defaultBoxShadow(),
                  border: Border.all(
                    color: AppColors.grey400,
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: RawScrollbar(
                    controller: scrollController,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizeTransition(
                            axisAlignment: 1,
                            sizeFactor: _expandAnimation,
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                children:
                                    widget.items.asMap().entries.map((item) {
                                  return InkWell(
                                    onTap: () {
                                      widget.onChange(
                                          item.value.value, item.key);
                                      selected = item.key;
                                      _toggleDropdown();
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(10),
                                        color: selected == item.key &&
                                                widget.index != -1
                                            ? AppColors.grey400
                                            : null,
                                      ),
                                      padding: EdgeInsets.only(
                                        left: widget.optionsPaddingLeft ?? 10,
                                        top: widget.items.first.value == 0
                                            ? 12
                                            : 0,
                                        bottom: widget.items.first.value == 0
                                            ? 12
                                            : 0,
                                        right: widget.optionsPaddingRight ?? 20,
                                      ),
                                      child: item.value,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleDropdown({
    bool close = false,
  }) async {
    if (isOpen || close) {
      _animationController = AnimationController(
          vsync: this, duration: const Duration(milliseconds: 200));
      await _animationController.reverse();
      _overlayEntry.remove();
      setState(() {
        isOpen = false;
      });
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
      setState(() {
        isOpen = true;
      });
      await _animationController.forward();
    }
  }
}

class CustomDropdownItem<T> extends StatelessWidget {
  final T value;
  final Widget child;

  const CustomDropdownItem(
      {required Key key, required this.value, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class DropdownButtonStyle {
  final MainAxisAlignment mainAxisAlignment;
  final ShapeBorder shape;
  final double elevation;
  final Color backgroundColor;
  final EdgeInsets padding;
  final BoxConstraints constraints;
  final double width;
  final double height;
  final Color primaryColor;

  const DropdownButtonStyle({
    required this.mainAxisAlignment,
    required this.backgroundColor,
    required this.primaryColor,
    required this.constraints,
    required this.height,
    required this.width,
    required this.elevation,
    required this.padding,
    required this.shape,
  });
}

class DropdownStyle {
  final BorderRadius borderRadius;
  final double elevation;
  final Color color;
  final EdgeInsets padding;
  final BoxConstraints constraints;
  final Offset offset;
  final double width;

  const DropdownStyle({
    required this.constraints,
    required this.offset,
    required this.width,
    required this.elevation,
    required this.color,
    required this.padding,
    required this.borderRadius,
  });
}

class CustomDropdownTime<T> extends StatefulWidget {
  final void Function(T, int) onChange;
  final List<CustomDropdownItem<T>> items;
  final int index;
  final double width;
  final String text;
  final bool showText;

  const CustomDropdownTime({
    required Key key,
    required this.items,
    required this.onChange,
    required this.index,
    required this.text,
    this.showText = false,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  CustomDropdownTimeState<T> createState() => CustomDropdownTimeState<T>();
}

class CustomDropdownTimeState<T> extends State<CustomDropdownTime<T>>
    with TickerProviderStateMixin {
  final LayerLink _layerLink = LayerLink();
  late OverlayEntry _overlayEntry;
  bool _isOpen = false;

  late AnimationController _animationController;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  dispose() {
    _animationController.dispose(); // you need this
    super.dispose();
  }

  void closeBottomSheet() {
    setState(() {
      _toggleDropdown(close: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onTap: () {
          _toggleDropdown();
        },
        child: Stack(
          children: [
            Container(
              height: 46,
              width: AppConstants.screenSize(context).width * (338 / 371) - 22,
              padding: const EdgeInsets.only(
                left: 8,
                right: 10,
              ),
              margin: widget.showText
                  ? const EdgeInsets.only(top: 30)
                  : EdgeInsets.zero,
              decoration: BoxDecoration(
                color: AppColors.grey400,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 6,
                ),
                child: (_isOpen || widget.index > widget.items.length)
                    ? const Text('')
                    : (widget.items[widget.index])),
          ],
        ),
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => _toggleDropdown(close: true),
        behavior: HitTestBehavior.deferToChild,
        child: SizedBox(
          height: AppConstants.screenSize(context).height,
          width: AppConstants.screenSize(context).width * (widget.width / 371),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CompositedTransformFollower(
                offset:
                    widget.showText ? const Offset(0, 85) : const Offset(0, 60),
                link: _layerLink,
                showWhenUnlinked: false,
                child: Material(
                  color: AppColors.grey400,
                  child: SizeTransition(
                    axisAlignment: 1,
                    sizeFactor: _expandAnimation,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        children: widget.items.asMap().entries.map((item) {
                          return InkWell(
                            onTap: () {
                              widget.onChange(item.value.value, item.key);
                              _toggleDropdown();
                            },
                            child: Container(
                              width: AppConstants.screenSize(context).width *
                                      (338 / 371) -
                                  22,
                              padding: const EdgeInsets.only(left: 10),
                              color: AppColors.splashGreen,
                              child: item.value,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleDropdown({bool close = false}) async {
    if (_isOpen || close) {
      _animationController = AnimationController(
          vsync: this, duration: const Duration(milliseconds: 200));
      await _animationController.reverse();
      _overlayEntry.remove();

      setState(() {
        _isOpen = false;
      });
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
      setState(() => _isOpen = true);
      await _animationController.forward();
    }
  }
}

class DropdownItemTime<T> extends StatelessWidget {
  final T value;
  final Widget child;

  const DropdownItemTime(
      {required Key key, required this.value, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class DropdownButtonStyleTime {
  final MainAxisAlignment mainAxisAlignment;
  final ShapeBorder shape;
  final double elevation;
  final Color backgroundColor;
  final EdgeInsets padding;
  final BoxConstraints constraints;
  final double width;
  final double height;
  final Color primaryColor;

  const DropdownButtonStyleTime({
    required this.mainAxisAlignment,
    required this.backgroundColor,
    required this.primaryColor,
    required this.constraints,
    required this.height,
    required this.width,
    required this.elevation,
    required this.padding,
    required this.shape,
  });
}

class DropdownStyleTime {
  final BorderRadius borderRadius;
  final double elevation;
  final Color color;
  final EdgeInsets padding;
  final BoxConstraints constraints;
  final Offset offset;
  final double width;

  const DropdownStyleTime({
    required this.constraints,
    required this.offset,
    required this.width,
    required this.elevation,
    required this.color,
    required this.padding,
    required this.borderRadius,
  });
}