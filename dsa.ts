function linearLowestNumber(array: number[], data?: number, i: number = 0): number {
  data = (data == undefined) ? array[0] : data;
  return (i >= array.length) ? data : lowestNumber(array, (array[i] < data) ?  array[i] : data, ++i);
}
// --------------------------------------------
function * swapBubbleSort(first: number, second: number, reverse: boolean = false): Generator<number> {
  if (first < second) {
    yield first;
    yield second;
  } else {
    yield second;
    yield first;
  }
}
function bubbleSort(array: number[], index?: number): number[] {
  if (index == undefined) {
    index = array.length - 1;
  }
  
  for (let i: number = 0; i <= index - 1; i++) {
    let swap: Generator<number> = swapBubbleSort(array[i], array[i + 1]);
    array[i] = swap.next().value;
    array[i + 1] = swap.next().value;
  }

  return (index <= 0) ? array : bubbleSort(array, --index);
}
// --------------------------------------------
function * swapSelectionSort(first: number, second: number, reverse: boolean = false): Generator<number> {
  if (first < second) {
    yield first;
    yield second;
  } else {
    yield second;
    yield first;
  }
}
function selectionSort(array: number[], index: number = 0): number[] {
  for (let i: number = index + 1; i < array.length; i++) {
    let swap: Generator<number> = swapSelectionSort(array[index], array[i]);
    array[index] = swap.next().value;
    array[i] = swap.next().value;
  }
  console.log('-------------');
  return (index >= array.length - 1) ? array : selectionSort(array, ++index);
}
