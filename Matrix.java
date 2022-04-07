public class Matrix {
  public static float[][] add(float[][] a, float[][] b) {
    float[][] c = new float[a.length][a[0].length];
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a[0].length; j++) {
        try {
          c[i][j] = a[i][j] + b[i][j];
        }
        catch (ArrayIndexOutOfBoundsException e) {
          System.out.println("matrices don't match");
        }
      }
    }
    return c;
  }
  
  public static float[][] mult(float[][] a, float[][] b) {
    if (a[0].length != b.length) {
      throw new RuntimeException("matrix shapes don't match");
    }
    float[][] c = new float[a.length][b[0].length];
    for (int i = 0; i < c.length; i++) {
      for (int j = 0; j < c[0].length; j++) {
        float sum = 0.0f;
        for (int k = 0; k < a[0].length; k++) {
          float num = a[i][k] * b[k][j];
          sum += num;
        }
        c[i][j] = sum;
      }
    }
    return c;
  }
  
  public static float[][] genRandMatrix(int rows, int cols) {
    float[][] mat = new float[rows][cols];
    //traverse through mat matrix
    for (int i = 0; i < mat.length; i++) {
      for (int j = 0; j < mat[0].length; j++) {
        //set each element to Math.random()
        mat[i][j] = (float) Math.random() * 4 - 2;
      }
    }
    //return answer
    return mat;
  }
}
