// Author Taehyung93
firstNonConsecutive (arr) {
  for (var i = 0; i < arr.length - 1; i++){
    if (arr[i] + 1 != arr[i+1]) return arr[i+1];
  }
}