import 'package:fpdart/fpdart.dart';
import 'package:appwrite_twitter/core/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureEitherVoid = FutureEither<void>;
