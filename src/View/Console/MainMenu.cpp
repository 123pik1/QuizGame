#include "View/Console/MainMenu.hpp"
#include <iostream>
using namespace View;
using namespace View::Console;

void MainMenu::draw()
{
    std::cout<<"Choose category: 1\n";
    std::cout<<"Exit: 0\n";
}

ViewMode MainMenu::play()
{
    draw();
    ViewMode chosen;

    return chosen;
}