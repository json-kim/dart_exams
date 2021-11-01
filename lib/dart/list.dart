void main() {
  List<int> nums = [1, 2, 3, 4, 5];

  int total = 0;
  for (int i = 0; i < nums.length; i++) {
    // 홀수라면 더하기
    if (nums[i] % 2 == 1) {
      total = total + nums[i];
    }
  }

  print(total);

  // nums[0] = 10;
  // print(nums);
  //
  // print(nums[0]);
  // print(nums[4]);
  // print(nums[5]);

  // 반복문
  // 초기값; 조건; 후위 연산

  // 리스트에 추가
  nums.add(10);
  print(nums);
  print(nums.last);
  nums.remove(10);
  print(nums);
}