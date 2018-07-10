import "package:test/test.dart";
import "package:list_chunk/list_chunk.dart";

void main() {
  
  List<dynamic> list = [1, 'a', 2, 'b', 3];
  
  test("chunkSize", () {
    expect(list_chunk( list, chunkSize: 2 ), equals([[1, 'a'], [2, 'b'], [3]]));
  });
  
  test("autoComplete", () {
    expect(list_chunk( list, chunkSize: 4, autoComplete: true ), equals([[1, 'a', 2, 'b'], [3, null, null, null]]));
  });

  test("autoValue", () {
    expect(list_chunk( list, chunkSize: 4, autoComplete: true, autoValue: 'x' ), equals([[1, 'a', 2, 'b'], [3, 'x', 'x', 'x']]));
  });

}
