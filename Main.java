import java.util.Scanner;

public class Main7 {
    public static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("Filas: ");
        int f = sc.nextInt();
        System.out.print("Columnas: ");
        int c = sc.nextInt();

        int[][] img = new int[f][c];
        System.out.println("Ingresa la matriz (valores 0-255):");
        for (int i = 0; i < f; i++)
            for (int j = 0; j < c; j++)
                img[i][j] = sc.nextInt();

        while (true) {
            System.out.println("\n--- IMAGEN ---");
            mostrar(img);
            System.out.println("\n1. Rotar 90°");
            System.out.println("2. Flip horizontal");
            System.out.println("3. Flip vertical");
            System.out.println("4. Transponer");
            System.out.println("5. Salir");
            System.out.print("Opción: ");
            int op = sc.nextInt();

            if (op == 1) mostrar(rotar90(img));
            else if (op == 2) mostrar(flipHorizontal(img));
            else if (op == 3) mostrar(flipVertical(img));
            else if (op == 4) mostrar(transponer(img));
            else if (op == 5) break;
        }
    }

    public static void mostrar(int[][] m) {
        for (int[] fila : m) {
            for (int v : fila) System.out.printf("%4d", v);
            System.out.println();
        }
    }

    public static int[][] rotar90(int[][] m) {
        int f = m.length, c = m[0].length;
        int[][] r = new int[c][f];
        for (int i = 0; i < f; i++)
            for (int j = 0; j < c; j++)
                r[j][f-1-i] = m[i][j];
        return r;
    }

    public static int[][] flipHorizontal(int[][] m) {
        int[][] r = new int[m.length][m[0].length];
        for (int i = 0; i < m.length; i++)
            for (int j = 0; j < m[0].length; j++)
                r[m.length-1-i][j] = m[i][j];
        return r;
    }

    public static int[][] flipVertical(int[][] m) {
        int[][] r = new int[m.length][m[0].length];
        for (int i = 0; i < m.length; i++)
            for (int j = 0; j < m[0].length; j++)
                r[i][m[0].length-1-j] = m[i][j];
        return r;
    }

    public static int[][] transponer(int[][] m) {
        int[][] r = new int[m[0].length][m.length];
        for (int i = 0; i < m.length; i++)
            for (int j = 0; j < m[0].length; j++)
                r[j][i] = m[i][j];
        return r;
    }
}