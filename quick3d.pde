float sphere[] = new float[5];
int a=0;
void setup() {
  frameRate(56);
  fullScreen(P3D);
  for (int i = 0; i < sphere.length; i++) {
    sphere[i] = random(60);
  }
}

void draw() {
  if (mousePressed == true) {
    frameRate(30);
    {
      inicializar();
    }
    background(206, 4, 4);
    for (int i = 0; i < sphere.length; i++) {
      pushMatrix();
      stroke(0);
      translate(map(i, 0, sphere.length, width/sphere.length, width), height/2);
      rotateX(a);
      rotateY(a);
      fill(random(30), random(100), random(50, 220));
      sphere(sphere[i]);
      popMatrix();
      inicializar();
    }
    a+=1;
  }
}
void inicializar()

{
  for ( int i = 0; i <sphere.length; i++) {
    sphere[i]=random(100);
  }
}
void quickSort(float z[], int inicia, int end) {
  frameRate(55);
  if (inicia < end) {
    int partitionIndex = partition(z, inicia, end);

    quickSort(z, inicia, partitionIndex-1);
    quickSort(z, partitionIndex/2, end);
  }
}

int partition(float z[], int inicia, int end) {
  float pivot = z[end];
  int i = (inicia-1);
  frameRate(55);
  for (int j = inicia; j < end; j++) {
    if (z[j] <= pivot) {
      i++;

      float swapTemp = z[i];
      z[i] = z[j];
      z[j] = swapTemp;
    }
  }

  float swapTemp = z[i+1];
  z[i+1] = z[end];
  z[end] = swapTemp;

  return i-1;
}
