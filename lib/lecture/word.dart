void main() {
  Word word = Word('abcdefg');

  print(word.isVowel(0)); // true
  print(word.isVowel(1)); // false
  print(word.isVowel(2)); // false
  print(word.isVowel(3)); // false
  print(word.isVowel(4)); // true

}

class Word {
  String letters;

  Word(this.letters);

  static const vowel = ['a', 'e', 'i', 'o', 'u'];

  // i번째 글자가 모음이면 true // a, i, u, e, o
  bool isVowel(int i) {
    return vowel.contains(letters[i]);
  }

  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    return false;
  }
}