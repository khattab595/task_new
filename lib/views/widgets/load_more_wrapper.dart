import 'package:flutter/material.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/shared/theme/helper.dart';

class LoadMoreWrapper extends StatefulWidget {
  final Function onLoadMore;
  final Future<void> Function()? onRefresh;
  final int itemCount;
  final bool isLoadingMore;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double childAspectRatio;
  final EdgeInsets? padding;
  final Widget Function(BuildContext, int) itemBuilder;

  const LoadMoreWrapper({
    Key? key,
    required this.onLoadMore,
    required this.itemCount,
    required this.itemBuilder,
    required this.isLoadingMore,
    required this.crossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.childAspectRatio = 1.0,
    this.onRefresh,
    this.padding,
  })  : assert(crossAxisCount > 0),
        assert(mainAxisSpacing >= 0),
        assert(crossAxisSpacing >= 0),
        assert(childAspectRatio > 0),
        super(key: key);

  @override
  State<LoadMoreWrapper> createState() => _LoadMoreWrapperState();
}

class _LoadMoreWrapperState extends State<LoadMoreWrapper> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() async {
      var currentScroll = _scrollController.position.pixels;
      var maxScroll = _scrollController.position.maxScrollExtent;
      if (maxScroll - currentScroll == 0) {
        widget.onLoadMore();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        RefreshIndicator(
          onRefresh: widget.onRefresh ?? () => Future.value(),
          child: widget.crossAxisCount > 1
              ? GridView.builder(
                  padding: widget.padding ?? EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: KHelper.hPadding).copyWith(bottom: 60),
                  physics: const BouncingScrollPhysics(),
                  controller: _scrollController,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: widget.crossAxisSpacing,
                    childAspectRatio: widget.childAspectRatio,
                    mainAxisSpacing: widget.mainAxisSpacing,
                    crossAxisCount: widget.crossAxisCount,
                  ),
                  itemCount: widget.itemCount,
                  itemBuilder: widget.itemBuilder,
                )
              : ListView.builder(
                  padding: widget.padding ?? EdgeInsets.symmetric(horizontal: KHelper.hPadding, vertical: KHelper.hPadding).copyWith(bottom: 60),
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _scrollController,
                  itemCount: widget.itemCount,
                  itemBuilder: widget.itemBuilder,
                ),
        ),
        if (widget.isLoadingMore)
          Padding(
            padding: widget.padding ?? const EdgeInsets.all(20),
            child: const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation(KColors.accentColorD),
            ),
          ),
      ],
    );
  }
}

class LoadMoreWrapperReOrderable extends StatefulWidget {
  final Function onLoadMore;
  final int itemCount;
  final bool isLoadingMore;
  final EdgeInsets? padding;
  final Widget Function(BuildContext, int) itemBuilder;
  final Function(int, int) onReorder;

  const LoadMoreWrapperReOrderable({
    Key? key,
    required this.onLoadMore,
    required this.itemCount,
    required this.itemBuilder,
    required this.isLoadingMore,
    required this.onReorder,
    this.padding,
  }) : super(key: key);

  @override
  State<LoadMoreWrapperReOrderable> createState() => _LoadMoreWrapperReOrderableState();
}

class _LoadMoreWrapperReOrderableState extends State<LoadMoreWrapperReOrderable> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() async {
      var currentScroll = _scrollController.position.pixels;
      var maxScroll = _scrollController.position.maxScrollExtent;
      if (maxScroll - currentScroll == 0) {
        widget.onLoadMore();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ReorderableListView.builder(
          padding: const EdgeInsets.only(bottom: 100, top: 10),
          scrollController: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: widget.itemCount,
          itemBuilder: widget.itemBuilder,
          buildDefaultDragHandles: false,
          onReorderEnd: (int index) {},
          onReorder: widget.onReorder,
        ),
        if (widget.isLoadingMore)
          Padding(
            padding: widget.padding ?? const EdgeInsets.all(20),
            child: const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation(KColors.accentColorD),
            ),
          ),
      ],
    );
  }
}
