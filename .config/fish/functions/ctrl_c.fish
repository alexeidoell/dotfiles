function ctrl_c
    if string length -- (commandline) > 0
        commandline -f cancel-commandline
    else
        commandline -f clear-screen
    end
end
