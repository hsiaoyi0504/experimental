#include<iostream>
#include<vector>
using namespace std;

int main() {
  vector<int>* _buckets = new vector<int>[7];
  cout << _buckets << endl;
  cout << &_buckets[0] << endl;
  _buckets[0].push_back(123);
  _buckets[0].push_back(456);
  _buckets[1].push_back(234);
  _buckets[1].push_back(567);
  cout << _buckets[0][0] << endl;
  cout << _buckets[0][1] << endl;
  cout << _buckets[1][0] << endl;
  cout << _buckets[1][1] << endl;
  return 0;
}