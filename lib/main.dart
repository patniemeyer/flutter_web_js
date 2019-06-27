@JS() // sets the context, in this case being `window`
library main; // required library declaration
import 'package:js/js.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: RaisedButton(
          child: Text("Debug"),
          onPressed: () {
            debugPrint("before call");
            testJS().then((result){
              debugPrint("debug call returned: $result");
            });
          },
        ),
        body: Text("Here!", style: Theme.of(context).textTheme.headline))
    );
  }
}

typedef Callback<T> = void Function(T arg);

@JS()
class Promise<T> {
  external Promise<T> then(Callback<T> successCallback, [Function errorCallback]);
  external Promise<T> catchIt(Function errorCallback);
}
@JS('testJS')
external Promise<String> testJS();
