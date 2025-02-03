/*
 Trying to build something fun... eventually
*/

build :: () {
    w := compiler_create_workspace("Fun Program");
    if !w {
        print("Workspace creation failed.\n");
        return;
    }

    options := get_build_options();
    options.output_executable_name = "fun_debug";
    set_optimization(*options, .DEBUG);
    import_paths: [..] string;
    array_add(*import_paths, tprint("%modules", #filepath));
    for options.import_path {
        array_add(*import_paths, it);
    }
    options.import_path = import_paths;
    set_build_options(options, w);
    
    add_build_file("source/fun.jai", w);
    set_build_options_dc(.{do_output = false});
}

#run build();

#import "Basic";
#import "Compiler";
