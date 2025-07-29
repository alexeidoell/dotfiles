function ctrl_c
    if test (string length -- (commandline)) -gt 0
        commandline -f cancel-commandline
    else
        commandline -f clear-screen
    end
end
