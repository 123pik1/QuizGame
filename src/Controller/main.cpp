#include <GameManager.hpp>
#include <iostream>

int main(int argc, char* argv[])
{
    if (argc == 1)
        Controller::GameManager gm;
    else
        Controller::GameManager gm(argv[1][0]); // 0 - console, 1 - desktop, 2 - mobile
    return 0;
}