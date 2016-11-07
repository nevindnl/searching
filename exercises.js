function nthSmallest(arr, n){
  const pivotIdx = Math.floor(Math.random() * arr.length);
  const pivot = arr[pivotIdx];

  const left = [];
  const right = [];

  arr.forEach((el, i) => {
    if (i === pivotIdx) return;

    el <= pivot ? left.push(el) : right.push(el);
  });

  if (left.length === n - 1) {
    return pivot;
  } else {
    return left.length >= n ?
      nthSmallest(left, n) :
      nthSmallest(right, n - left.length - 1);
  }
}


// single path
// 2D search


// minimum comparisons
// min/max array
