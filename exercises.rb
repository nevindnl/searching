# bsearch
def local_minimum arr, lower_idx = 0, upper_idx = arr.length - 1
  return nil if lower_idx > upper_idx

  mid_idx = (lower_idx + upper_idx) / 2
  mid = arr[mid_idx]

  neighbors = [mid_idx - 1, mid_idx + 1]
    .reject{|i| !i.between?(0, arr.length)}

  if neighbors.all?{|i| arr[i] > mid}
    mid_idx
  elsif arr[neighbors.first] < mid && neighbors.first < mid_idx
    local_minimum(arr, lower_idx, mid_idx - 1)
  else
    local_minimum(arr, mid_idx + 1, upper_idx)
  end
end

def sqrt n, tolerance, lower = 0, upper = n
  return [lower, upper] if upper - lower < tolerance

  mid = (lower + upper) / 2.0
  mid_square = mid ** 2

  if mid_square == n
    mid
  elsif mid_square < n
    sqrt(n, tolerance, mid, upper)
  else
    sqrt(n, tolerance, lower, mid)
  end
end
