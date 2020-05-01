import 'package:equatable/equatable.dart';

import '../../network/network.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class InitialMoviesState extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesLoadingMore extends MoviesState{}

class MoviesLoaded extends MoviesState {
  final Result result;

  const MoviesLoaded([this.result]);

  @override
  List<Object> get props => [result];
}

class MoviesNotLoaded extends MoviesState {
  final String errorMessage;

  const MoviesNotLoaded(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() => 'LoginFailure { error: $errorMessage }';
}