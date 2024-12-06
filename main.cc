#include <fstream>
#include <iostream>

using namespace std;

int main() {
    std::cout<<"Hello there puzzle solver! Welcome to puzztimer; a tool to time you while you solve combination puzzles." << endl;
    
    std::cout<<"Which puzzle will you be solving today?" << endl;
    
    std::ifstream inf{"./data/puzzles.txt"};
    
    std::string strInput{};
    
    while (inf >> strInput) {
        std::cout << strInput << "\n";
    }
    
    return 0;
}