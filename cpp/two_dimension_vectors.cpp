#include<iostream>
#include<vector>
using namespace std;

int main() {
  int first_dimension_size = 5;
  vector<vector<int>> vectorList(first_dimension_size);
  cout << vectorList.size() << endl;
  for (int i=0; i < first_dimension_size; i++) {
    cout << vectorList[i].size() << endl;
  }
  return 0;
}