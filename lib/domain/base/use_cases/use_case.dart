abstract class UseCase<ReturnT, ParamT> {
  Future<ReturnT> call(ParamT param);
}