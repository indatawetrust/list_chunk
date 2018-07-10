# list chunk

[![Build Status](https://travis-ci.org/indatawetrust/list_chunk.svg?branch=master)](https://travis-ci.org/indatawetrust/list_chunk)

### what is this?
It provides you to divide the lists.

### how to use?

```yaml
dev_dependencies:
  list_chunk: any
```

```dart
import "package:list_chunk/list_chunk.dart";

List<dynamic> list = [1, 'a', 2, 'b', 3];

void main() {

  List<dynamic> list = [1, 'a', 2, 'b', 3];

  print(list_chunk( list, chunkSize: 2 ));

  // [[1, 'a'], [2, 'b'], [3]]

  print(list_chunk( list, chunkSize: 4, autoComplete: true ));

  // [[1, 'a', 2, 'b'], [3, null, null, null]]

  print(list_chunk( list, chunkSize: 4, autoComplete: true, autoValue: 'x' ));

  // [[1, 'a', 2, 'b'], [3, 'x', 'x', 'x']]

}
```
