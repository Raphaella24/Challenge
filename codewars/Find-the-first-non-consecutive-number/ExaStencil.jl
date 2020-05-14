#Author ExaStencil
function firstnonconsecutive(arr)
  if length(arr) < 2
    return nothing
  else
    n = 2
    while n ≤ length(arr) && arr[n] == arr[n - 1] + 1
      n += 1
    end

    if n > length(arr)
      return nothing
    else
      return arr[n]
    end
  end
end
