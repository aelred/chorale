import Sound.PortMidi as Port

port :: IO DeviceID
port = getDefaultOutputDeviceID >>= maybe (ioError $ userError "oops") return

main = port >>= (putStrLn . show)
