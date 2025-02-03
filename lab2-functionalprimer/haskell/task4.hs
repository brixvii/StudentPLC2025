ask :: String -> IO ()
ask prompt =
  do
    putStrLn prompt
    line <- getLine
    if line == "quit"  -- Check for "quit" to exit
      then putStrLn "quitting..." >> return ()  -- Print "quitting..." and exit
      else if line == ""  -- Handle empty input
        then ask (prompt ++ "!") -- Call ask recursively if no input
        else putStrLn ("you said: " ++ reverse line) >> ask prompt  -- Print reversed input and continue

main :: IO ()
main =
  do
    let prompt = "please say something"
    ask prompt
