import 'package:flutter/material.dart';
import 'package:flutter_counter/data/models/news_response.dart';

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeLoaded extends HomeState {
  final List<Articles> articles;

  const HomeLoaded(this.articles);
}

class HomeError extends HomeState {
  final String error;

  const HomeError(this.error);
}
