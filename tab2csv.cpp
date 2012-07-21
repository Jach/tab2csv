#include <iostream>
#include <string>

using std::string;
using std::cout;
using std::cin;
using std::endl;

int main() {
  string line;
  cin.sync_with_stdio(false);
  while (std::getline(cin, line)) {
    const char* head = line.c_str();
    while (*head) {
      if (*head == '\t')
        cout << ',';
      else
        cout << *head;
      ++head;
    }
    cout << endl;
  }
  return 0;
}
