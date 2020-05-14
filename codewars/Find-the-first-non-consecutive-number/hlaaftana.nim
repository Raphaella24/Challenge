#Author hlaaftana
import options

proc first_non_consecutive*(arr: seq[int]): Option[int] =
  for i in 1..<arr.len:
    if arr[i] - arr[i - 1] != 1:
      return some(arr[i])
  result = none(int)
