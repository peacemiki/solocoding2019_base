import 'package:solocoding2019_base/entity/memo.dart';

abstract class MemoRepository {

  List<Memo> getAllMemo();

  Memo getMemo(String id);

}