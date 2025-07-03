#include <View/ViewMode.hpp>

namespace View
{
    namespace Console
    {
        class MainMenu
        {
        private:
            /*
                Draw view - display main menu
            */
            void draw();

        public:
            /*
                Component to run function draw and pass input in VieaMode type
            */
            virtual ViewMode play();
        };
    }
}