module Paths_docsnap (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/will/.cabal/bin"
libdir     = "/Users/will/.cabal/lib/docsnap-0.1/ghc-7.0.3"
datadir    = "/Users/will/.cabal/share/docsnap-0.1"
libexecdir = "/Users/will/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "docsnap_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "docsnap_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "docsnap_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "docsnap_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
