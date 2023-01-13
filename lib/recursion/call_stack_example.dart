class CallStack {
  static void _greet2(String name) => print("How are you $name ?");
  static void _bye() => print("Ok Bye!");

  static void greet(String name) {
    print("hello, $name !");
    _greet2(name);
    print("getting ready to say bye...");
    _bye();
  }
}
