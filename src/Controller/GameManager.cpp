#include "Controller/GameManager.hpp"

using namespace Controller;
GameManager::GameManager()
{
    currentViewMode = View::MainMenu;
    mainloop();
}

void GameManager::mainloop()
{
    switch (currentViewMode)
    {
    case View::MainMenu:
        mainMenuServe();
        break;

    default:
        break;
    }
}

void GameManager::mainMenuServe()
{
    // TODO window manager to manage when it is
}