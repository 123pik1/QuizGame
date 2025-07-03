#include "View/ViewMode.hpp"
using namespace View; //there is no problem with this

namespace Controller
{
    class GameManager
    {
    private:
        ViewMode currentViewMode;
        void mainloop();
        void mainMenuServe();
    public:
        GameManager();
        GameManager(char arg);
    };
}