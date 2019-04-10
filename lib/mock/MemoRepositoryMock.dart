import 'package:solocoding2019_base/domain/MemoRepository.dart';
import 'package:solocoding2019_base/entity/memo.dart';

class MemoRepositoryMock extends MemoRepository {

  final Memo memo1 = new Memo("1", "Memo Mock Description 1", 0, 1);
  final Memo memo2 = new Memo("2", "Memo Mock Description 2", 0, 2);

  @override
  List<Memo> getAllMemo() {
    List<Memo> memoList = new List(2);
    memoList.add(memo1);
    memoList.add(memo2);
    return memoList;
  }

  @override
  Memo getMemo(String id) {
    return memo1;
  }

}