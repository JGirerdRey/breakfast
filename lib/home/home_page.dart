import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/component/title_widget.dart';
import 'package:flutter_counter/home/cubit/home_cubit.dart';
import 'package:flutter_counter/home/cubit/home_state.dart';
import 'package:flutter_counter/home/views/home_empty.dart';
import 'package:pedantic/pedantic.dart';

import '../data/ticket_repository.dart';
import 'views/error_view.dart';
import 'views/home_loaded.dart';
import 'views/loading_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context.read<SpoonRepository>()),
      child: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Timer? _debounce;
  final _controller = TextEditingController();

  @override
  void initState() {
    unawaited(context.read<HomeCubit>().fetchRandom());
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          expandedHeight: 140,
          backgroundColor: Colors.white,
          title: TitleWidget("Breakfast News 🍳", 28.0),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                const SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _searchBox(),
                ),
              ],
            ),
          ),
        ),
        buildBody(),
      ],
    ));
  }

  TextField _searchBox() {
    return TextField(
      controller: _controller,
      onChanged: (query) => _onSearchChanged(query),
      decoration: InputDecoration(
        hintText: "AndroidMakers, Bitcoin..",
        prefixIcon: const Icon(
          Icons.search,
        ),
        filled: true,
        fillColor: Colors.grey[20],
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90.0)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isNotEmpty) {
        unawaited(context.read<HomeCubit>().fetchSearch(query));
      }
    });
  }

  _body() {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomeInitial) {
          return const HomeEmpty();
        } else if (state is HomeLoading) {
          return const LoadingView();
        } else if (state is HomeLoaded) {
          return HomeLoadedView(state.articles);
        } else if (state is HomeError) {
          return const ErrorView();
        } else {
          return const ErrorView();
        }
      },
    );
  }

  buildBody() => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(right:16.0, left:16.0),
          child: Builder(builder: (context) {
            return _body();
          }),
        ),
      );
}
