Simp  :: #import "Simp";
Input :: #import "Input";

WC :: #import "Window_Creation";

WANTED_MSAA :: 8;

// This is a wrapper around what comes with Jai for now.  I will need to look into ways to make sure we can get
// X11 or Wayland windows at some point.  Jai, under Linux, only supports X11 at the moment.  And hard-links to the
// libraries.  So, gotta get around that at some point.  But getting some plubming in place for now.
UI_Window :: struct {
    underlying: WC.Window_Type;
};

create_window :: (width: int, height: int, title: string) -> UI_Window {
    return UI_Window.{underlying = WC.create_window(width, height, title, wanted_msaa = WANTED_MSAA)};
}
