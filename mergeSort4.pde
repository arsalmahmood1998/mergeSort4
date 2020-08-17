int [] arrayToBeSorted={3, 4, 7, 2, 6, 0, 87, 34, 1, 9898, 7878, 56, 4332, 0, 99879   };
void setup() {
  println("Array Before Sort");
  for (int i=0; i<arrayToBeSorted.length; i++) {
    print(arrayToBeSorted[i]+" ");
  }
  println();
  println("Sorted Array");
  mergeSort(arrayToBeSorted, 0, arrayToBeSorted.length-1);
  for (int i=0; i<arrayToBeSorted.length; i++) {
    print(arrayToBeSorted[i]+" ");
  }
}
void draw() {
}
void mergeSort(int [] array, int startPoint, int endPoint) {
  int midPoint;
  if (startPoint<endPoint) {
    midPoint=(startPoint+endPoint)/2;
    mergeSort(array, startPoint, midPoint);
    mergeSort(array, midPoint+1, endPoint);
    merge(array, startPoint, endPoint, midPoint);
  }
}
void merge (int [] array, int startPoint, int high, int  midPoint) {
  int i, j, k;
  int [] newArray= new int[array.length];
  i=startPoint;
  k=startPoint;
  j= midPoint+1;
  while (i<= midPoint && j<= high) {
    if (array[i]<array[j]) {
      newArray[k]=array[i];
      k++;
      i++;
    } else {
      newArray[k]=array[j];
      k++;
      j++;
    }
  }
  while (i<= midPoint) {
    newArray[k]=array[i];
    k++;
    i++;
  }
  while (j<=high) {
    newArray[k]=array[j];
    k++;
    j++;
  }
  for (i=startPoint; i<k; i++) {
    array[i]=newArray[i];
  }
}
