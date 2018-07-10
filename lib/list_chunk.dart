List list_chunk(List list, { chunkSize, autoComplete: false, autoValue: null }) {    
  List chunks = [];
  
  int len = list.length;
  
  for (var i = 0; i < len; i += chunkSize) {
    int size = i+chunkSize;
    List _list = list.sublist(i, size > len ? len : size);
    
    if (size > len && autoComplete) {
      for (var j=0;j<size-len;j++) {
        _list.add(autoValue);
      }
    } 	
  
    chunks.add(_list);
  }
  
  return chunks;
}
