Ui :: #import "Ui";
Input :: #import "Input";

#import "Basic";

main :: () {
    my_window := Ui.create_window(800, 600, "A Window");
    quit := false;
    while !quit {
        Input.update_window_events();
        for Input.events_this_frame {
            if it.type == .QUIT then quit = true;

            if it.type == {
              case .KEYBOARD;
                if it.key_pressed && it.key_code == .ESCAPE {
                    quit = true;
                }
            }
        }
        sleep_milliseconds(10);
        reset_temporary_storage();
    }
}


#run {
    #if OS == .WINDOWS {
        WR :: #import "Windows_Resources";
        WR.disable_runtime_console();
    }
}
