import 'package:args/args.dart';
import 'package:dart_101/dart_101.dart';


const lineNumber = 'line-number';
ArgResults argResults;

main(List<String> args) {
  var awesome = new Awesome();
  print('awesome: ${awesome.isAwesome}');
  // Get command line arguments
  final parser = new ArgParser()
    ..addFlag(lineNumber, negatable: false, abbr: 'n');

  argResults = parser.parse(args);

  print('Argument ' + argResults[lineNumber].toString());

  for (var arg in args) {
    print(arg.toString());
  }

}
