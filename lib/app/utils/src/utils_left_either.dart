import 'package:either_dart/either.dart';
import 'package:visc_starter/domain/domain.dart';

import '../../../infras/infras.dart';

class HandleError<T> {
  Left<YourAppError, T> error(Either<ApiException, dynamic> data) {
    if (data.left.res != null) {
      final pundiError = YourAppError.fromMap(data.left.res!);

      return Left(pundiError);
    } else {
      final pundiError = YourAppError(error: data.left.message);

      return Left(pundiError);
    }
  }
}
