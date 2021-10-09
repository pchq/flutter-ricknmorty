class AnalyzerTest {
  static bool foo(int a, int b, int c, int e, int d) {
    if ((a + b) == c) {
      d = e;
    }
    return d > 0;
  }

  static void foo2() {}
}
