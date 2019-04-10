import 'package:solocoding2019_base/domain/MemoRepository.dart';
import 'package:solocoding2019_base/entity/memo.dart';

class MemoGetUseCase {

  final MemoRepository repository;

  const MemoGetUseCase(this.repository);

  Memo getMemo(String id) {
    return repository.getMemo(id);
  }

  List<Memo> getAllMemo() {
    return repository.getAllMemo();
  }

}