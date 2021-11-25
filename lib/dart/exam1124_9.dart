import 'dart:io';
import 'dart:convert';

void main() {
  List<String> input = stdin.readLineSync(encoding: utf8).split(' ');
  int row = int.parse(input[0]);
  int col = int.parse(input[1]);

  List<List<int>> image = [];
  for (int i = 0; i < row; i++) {
    List<String> rowInput = stdin.readLineSync(encoding: utf8).split(' ');
    List<int> row = rowInput.map((s) => int.parse(s)).toList();

    image.add(row);
  }

  GrayImage grayImage = GrayImage(grayScaleMatrix: image);
  final matrix = grayImage.getBWMatrix();

  for (final row in matrix) {
    print(row.join(' '));
  }
}

class GrayImage {
  List<List<int>> grayScaleMatrix;

  GrayImage({this.grayScaleMatrix});

  List<List<int>> getBWMatrix() {
    List<List<int>> BWMatrix = [];

    for (int i = 0; i < grayScaleMatrix.length; i++) {
      List<int> row = [];

      for (int j = 0; j < grayScaleMatrix[i].length; j++) {
        int value = grayScaleMatrix[i][j] >= 128 ? 1 : 0;
        row.add(value);
      }

      BWMatrix.add(row);
    }

    return BWMatrix;
  }
}

