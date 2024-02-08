import 'package:either_dart/either.dart';
import 'package:visc_starter/domain/domain.dart';

abstract class ProductBR {
  Future<Either<YourAppError, List<Product>>> getProduct(
    Map<String, dynamic> query,
  );
  Future<Either<YourAppError, GeneralMessage>> uploadProduct<T>(
    T uploadedData,
  );
  Future<Either<YourAppError, GeneralMessage>> updateProduct<T>(
    T uploadedData,
  );
  Future<Either<YourAppError, GeneralMessage>> deleteProduct<T>(
    T uploadedData,
  );
}
