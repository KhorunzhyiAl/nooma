abstract class StreamUseCase<StreamT, ParamT> {
  Stream<StreamT> call(ParamT param);
}