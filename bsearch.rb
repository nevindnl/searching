def bsearch(arr, value, lower_idx = 0, upper_idx = arr.length - 1)
  return nil if lower_idx > upper_idx

  mid_idx = (lower_idx + upper_idx) / 2
  mid = arr[mid_idx]

  if mid == value
    mid_idx
  elsif mid < value
    bsearch(arr, value, mid_idx + 1, upper_idx)
  else
    bsearch(arr, value, lower_idx, mid_idx - 1)
  end
end

def bsearch(arr, value)
  lower_idx = 0
  upper_idx = arr.length - 1

  while lower_idx <= upper_idx
    mid_idx = (lower_idx + upper_idx) / 2
    mid = arr[mid_idx]

    if mid == value
      return mid_idx
    elsif mid < value
      lower_idx = mid_idx + 1
    else
      upper_idx = mid_idx - 1
    end
  end

  nil
end
