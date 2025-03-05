function linearLowestNumber(array: number[], data?: number, i: number = 0): number {
  data = (data == undefined) ? array[0] : data;
  return (i >= array.length) ? data : lowestNumber(array, (array[i] < data) ?  array[i] : data, ++i);
}
