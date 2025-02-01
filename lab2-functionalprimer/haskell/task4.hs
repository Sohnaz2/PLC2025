ask :: String -> Int -> IO ()
ask prompt count =
  do
    -- Append "!" to the prompt based on the count
    let modifiedPrompt = prompt ++ replicate count '!'
    putStrLn modifiedPrompt
    line <- getLine
    if line == "quit"
      then putStrLn "quitting..."
      else if line == ""
        then ask prompt (count + 1)  -- Increment the count for consecutive empty inputs
        else do
          putStrLn ("you said: " ++ reverse line)
          ask prompt 0  -- Reset the count after a non-empty input

main :: IO ()
main =
  do
    let prompt = "please say something"
    ask prompt 0  -- Start with 0 "!"s