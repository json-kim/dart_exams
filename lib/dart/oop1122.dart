import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() {
  List<String> input = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(input[0]);
  int b = int.parse(input[1]);
  int R = int.parse(input[2]);

  Gongsa gongsa = Gongsa(a, b, R);

  int N = int.parse(stdin.readLineSync(encoding: utf8));

  List<Tree> trees = [];

  for (int i = 0; i < N; i++) {
    final xy = stdin.readLineSync(encoding: utf8).split(' ');
    Tree tree = Tree(int.parse(xy[0]), int.parse(xy[1]));
    trees.add(tree);
  }

  Park park = Park(gongsa, trees);
  List<bool> isTreesSilent = park.getIsTreesSilent();

  for (bool isSilent in isTreesSilent) {
    if (isSilent) {
      print('silent');
    } else {
      print('noisy');
    }
  }

}

class Park {
  Gongsa gongsa;
  List<Tree> trees;

  Park(this.gongsa, this.trees);

  List<bool> getIsTreesSilent() {
    return trees.map((tree) => gongsa.isSilent(tree)).toList();
  }
}

class Gongsa {
  int x;
  int y;
  int R;

  Gongsa(this.x, this.y, this.R);

  bool isSilent(Tree tree) {
    bool result = pow(tree.x - x, 2) + pow(tree.y - y, 2) >= pow(R, 2);

    return result;
  }
}

class Tree {
  int x;
  int y;

  Tree(this.x, this.y);
}