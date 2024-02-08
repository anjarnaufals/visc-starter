import 'package:either_dart/either.dart';
import 'package:visc_starter/domain/domain.dart';

import '../app/utils/utils.dart';
import '../data/remote/your_app_client.dart';

class ProductRepository implements ProductBR {
  ProductRepository(this.client);

  final YourAppClient client;

  static const String getProductUrl = '/list/product';

  @override
  Future<Either<YourAppError, GeneralMessage>> deleteProduct<T>(
      T uploadedData) {
    throw UnimplementedError();
  }

  @override
  Future<Either<YourAppError, List<Product>>> getProduct(
      Map<String, dynamic> query) async {
    try {
      var data = await client
          .call(
              // useAuthentication: true,
              )
          .then(
            (client) => client.get(
              getProductUrl,
              query: query,
              // showLog: true,
            ),
          );

      if (data.isLeft) {
        return HandleError<List<Product>>().error(data);
      } else {
        var listProduct = List<Product>.from(
          List.from(data.right).map((e) => Product.fromMap(e)),
        ).toList();

        return Right(listProduct);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<YourAppError, GeneralMessage>> updateProduct<T>(
      T uploadedData) {
    throw UnimplementedError();
  }

  @override
  Future<Either<YourAppError, GeneralMessage>> uploadProduct<T>(
      T uploadedData) {
    throw UnimplementedError();
  }
}
