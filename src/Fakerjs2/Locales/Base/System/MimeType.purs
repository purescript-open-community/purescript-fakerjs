module Fakerjs2.Locales.Base.System.MimeType (mime_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

mime_type =
  { "application/epub+zip":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "epub" ] }
  , "application/gzip":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "gz" ] }
  , "application/java-archive":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "jar", "war", "ear" ]
      }
  , "application/json":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "json", "map" ] }
  , "application/ld+json":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "jsonld" ] }
  , "application/msword":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "doc", "dot" ] }
  , "application/octet-stream":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "bin"
          , "dms"
          , "lrf"
          , "mar"
          , "so"
          , "dist"
          , "distz"
          , "pkg"
          , "bpk"
          , "dump"
          , "elc"
          , "deploy"
          , "exe"
          , "dll"
          , "deb"
          , "dmg"
          , "iso"
          , "img"
          , "msi"
          , "msp"
          , "msm"
          , "buffer"
          ]
      }
  , "application/ogg":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ogx" ] }
  , "application/pdf":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "pdf" ] }
  , "application/rtf":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "rtf" ] }
  , "application/vnd.amazon.ebook":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "azw" ] }
  , "application/vnd.apple.installer+xml":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "mpkg" ] }
  , "application/vnd.mozilla.xul+xml":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "xul" ] }
  , "application/vnd.ms-excel":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "xls", "xlm", "xla", "xlc", "xlt", "xlw" ]
      }
  , "application/vnd.ms-fontobject":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "eot" ] }
  , "application/vnd.ms-powerpoint":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "ppt", "pps", "pot" ]
      }
  , "application/vnd.oasis.opendocument.presentation":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "odp" ] }
  , "application/vnd.oasis.opendocument.spreadsheet":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ods" ] }
  , "application/vnd.oasis.opendocument.text":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "odt" ] }
  , "application/vnd.openxmlformats-officedocument.presentationml.presentation":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "pptx" ] }
  , "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "xlsx" ] }
  , "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "docx" ] }
  , "application/vnd.rar":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "rar" ] }
  , "application/vnd.visio":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "vsd", "vst", "vss", "vsw" ]
      }
  , "application/x-7z-compressed":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "7z" ] }
  , "application/x-abiword":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "abw" ] }
  , "application/x-bzip":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "bz" ] }
  , "application/x-bzip2":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "bz2", "boz" ] }
  , "application/x-csh":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "csh" ] }
  , "application/x-freearc":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "arc" ] }
  , "application/x-httpd-php":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "php" ] }
  , "application/x-sh":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "sh" ] }
  , "application/x-tar":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "tar" ] }
  , "application/xhtml+xml":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "xhtml", "xht" ]
      }
  , "application/xml":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "xml", "xsl", "xsd", "rng" ]
      }
  , "application/zip":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "zip" ] }
  , "audio/3gpp":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "3gpp" ] }
  , "audio/3gpp2":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "3g2" ] }
  , "audio/aac":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "aac" ] }
  , "audio/midi":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "mid", "midi", "kar", "rmi" ]
      }
  , "audio/mpeg":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "mpga", "mp2", "mp2a", "mp3", "m2a", "m3a" ]
      }
  , "audio/ogg":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "oga", "ogg", "spx", "opus" ]
      }
  , "audio/opus":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "opus" ] }
  , "audio/wav":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "wav" ] }
  , "audio/webm":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "weba" ] }
  , "font/otf":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "otf" ] }
  , "font/ttf":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ttf" ] }
  , "font/woff":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "woff" ] }
  , "font/woff2":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "woff2" ] }
  , "image/avif":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "avif" ] }
  , "image/bmp":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "bmp" ] }
  , "image/gif":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "gif" ] }
  , "image/jpeg":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "jpeg", "jpg", "jpe" ]
      }
  , "image/png":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "png" ] }
  , "image/svg+xml":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "svg", "svgz" ] }
  , "image/tiff":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "tif", "tiff" ] }
  , "image/vnd.microsoft.icon":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ico" ] }
  , "image/webp":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "webp" ] }
  , "text/calendar":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ics", "ifb" ] }
  , "text/css":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "css" ] }
  , "text/csv":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "csv" ] }
  , "text/html":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "html", "htm", "shtml" ]
      }
  , "text/javascript":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "js", "mjs" ] }
  , "text/plain":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "txt", "text", "conf", "def", "list", "log", "in", "ini" ]
      }
  , "video/3gpp":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "3gp", "3gpp" ] }
  , "video/3gpp2":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "3g2" ] }
  , "video/mp2t":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ts" ] }
  , "video/mp4":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "mp4", "mp4v", "mpg4" ]
      }
  , "video/mpeg":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
          [ "mpeg", "mpg", "mpe", "m1v", "m2v" ]
      }
  , "video/ogg":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ogv" ] }
  , "video/webm":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "webm" ] }
  , "video/x-msvideo":
      { extensions: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "avi" ] }
  }
