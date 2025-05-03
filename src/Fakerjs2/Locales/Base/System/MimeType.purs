module Fakerjs2.Locales.Base.System.MimeType (mime_type) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (MimeType)

mime_type :: MimeType
mime_type =
  { "application/x-sh": { extensions: [ unsafeFromString "sh" ] }
  , "application/vnd.ms-powerpoint":
      { extensions: [ unsafeFromString "ppt", unsafeFromString "pps", unsafeFromString "pot" ] }
  , "application/ogg": { extensions: [ unsafeFromString "ogx" ] }
  , "application/json": { extensions: [ unsafeFromString "json", unsafeFromString "map" ] }
  , "application/gzip": { extensions: [ unsafeFromString "gz" ] }
  , "application/epub+zip": { extensions: [ unsafeFromString "epub" ] }
  , "application/java-archive":
      { extensions: [ unsafeFromString "jar", unsafeFromString "war", unsafeFromString "ear" ] }
  , "application/msword": { extensions: [ unsafeFromString "doc", unsafeFromString "dot" ] }
  , "application/ld+json": { extensions: [ unsafeFromString "jsonld" ] }
  , "application/octet-stream":
      { extensions:
          [ unsafeFromString "bin"
          , unsafeFromString "dms"
          , unsafeFromString "lrf"
          , unsafeFromString "mar"
          , unsafeFromString "so"
          , unsafeFromString "dist"
          , unsafeFromString "distz"
          , unsafeFromString "pkg"
          , unsafeFromString "bpk"
          , unsafeFromString "dump"
          , unsafeFromString "elc"
          , unsafeFromString "deploy"
          , unsafeFromString "exe"
          , unsafeFromString "dll"
          , unsafeFromString "deb"
          , unsafeFromString "dmg"
          , unsafeFromString "iso"
          , unsafeFromString "img"
          , unsafeFromString "msi"
          , unsafeFromString "msp"
          , unsafeFromString "msm"
          , unsafeFromString "buffer"
          ]
      }
  , "application/vnd.apple.installer+xml": { extensions: [ unsafeFromString "mpkg" ] }
  , "application/rtf": { extensions: [ unsafeFromString "rtf" ] }
  , "application/pdf": { extensions: [ unsafeFromString "pdf" ] }
  , "application/vnd.amazon.ebook": { extensions: [ unsafeFromString "azw" ] }
  , "application/vnd.ms-excel":
      { extensions:
          [ unsafeFromString "xls"
          , unsafeFromString "xlm"
          , unsafeFromString "xla"
          , unsafeFromString "xlc"
          , unsafeFromString "xlt"
          , unsafeFromString "xlw"
          ]
      }
  , "application/vnd.mozilla.xul+xml": { extensions: [ unsafeFromString "xul" ] }
  , "application/vnd.ms-fontobject": { extensions: [ unsafeFromString "eot" ] }
  , "application/vnd.visio":
      { extensions:
          [ unsafeFromString "vsd"
          , unsafeFromString "vst"
          , unsafeFromString "vss"
          , unsafeFromString "vsw"
          ]
      }
  , "application/vnd.openxmlformats-officedocument.presentationml.presentation":
      { extensions: [ unsafeFromString "pptx" ] }
  , "application/vnd.oasis.opendocument.spreadsheet": { extensions: [ unsafeFromString "ods" ] }
  , "application/vnd.oasis.opendocument.presentation": { extensions: [ unsafeFromString "odp" ] }
  , "application/vnd.oasis.opendocument.text": { extensions: [ unsafeFromString "odt" ] }
  , "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
      { extensions: [ unsafeFromString "docx" ] }
  , "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":
      { extensions: [ unsafeFromString "xlsx" ] }
  , "application/vnd.rar": { extensions: [ unsafeFromString "rar" ] }
  , "application/x-bzip2": { extensions: [ unsafeFromString "bz2", unsafeFromString "boz" ] }
  , "application/x-abiword": { extensions: [ unsafeFromString "abw" ] }
  , "application/x-7z-compressed": { extensions: [ unsafeFromString "7z" ] }
  , "application/x-bzip": { extensions: [ unsafeFromString "bz" ] }
  , "application/x-freearc": { extensions: [ unsafeFromString "arc" ] }
  , "application/x-csh": { extensions: [ unsafeFromString "csh" ] }
  , "application/x-httpd-php": { extensions: [ unsafeFromString "php" ] }
  , "font/woff": { extensions: [ unsafeFromString "woff" ] }
  , "audio/midi":
      { extensions:
          [ unsafeFromString "mid"
          , unsafeFromString "midi"
          , unsafeFromString "kar"
          , unsafeFromString "rmi"
          ]
      }
  , "application/zip": { extensions: [ unsafeFromString "zip" ] }
  , "application/xhtml+xml": { extensions: [ unsafeFromString "xhtml", unsafeFromString "xht" ] }
  , "application/x-tar": { extensions: [ unsafeFromString "tar" ] }
  , "application/xml":
      { extensions:
          [ unsafeFromString "xml"
          , unsafeFromString "xsl"
          , unsafeFromString "xsd"
          , unsafeFromString "rng"
          ]
      }
  , "audio/3gpp2": { extensions: [ unsafeFromString "3g2" ] }
  , "audio/3gpp": { extensions: [ unsafeFromString "3gpp" ] }
  , "audio/aac": { extensions: [ unsafeFromString "aac" ] }
  , "audio/wav": { extensions: [ unsafeFromString "wav" ] }
  , "audio/ogg":
      { extensions:
          [ unsafeFromString "oga"
          , unsafeFromString "ogg"
          , unsafeFromString "spx"
          , unsafeFromString "opus"
          ]
      }
  , "audio/mpeg":
      { extensions:
          [ unsafeFromString "mpga"
          , unsafeFromString "mp2"
          , unsafeFromString "mp2a"
          , unsafeFromString "mp3"
          , unsafeFromString "m2a"
          , unsafeFromString "m3a"
          ]
      }
  , "audio/opus": { extensions: [ unsafeFromString "opus" ] }
  , "font/otf": { extensions: [ unsafeFromString "otf" ] }
  , "audio/webm": { extensions: [ unsafeFromString "weba" ] }
  , "font/ttf": { extensions: [ unsafeFromString "ttf" ] }
  , "text/plain":
      { extensions:
          [ unsafeFromString "txt"
          , unsafeFromString "text"
          , unsafeFromString "conf"
          , unsafeFromString "def"
          , unsafeFromString "list"
          , unsafeFromString "log"
          , unsafeFromString "in"
          , unsafeFromString "ini"
          ]
      }
  , "image/tiff": { extensions: [ unsafeFromString "tif", unsafeFromString "tiff" ] }
  , "image/gif": { extensions: [ unsafeFromString "gif" ] }
  , "image/avif": { extensions: [ unsafeFromString "avif" ] }
  , "font/woff2": { extensions: [ unsafeFromString "woff2" ] }
  , "image/bmp": { extensions: [ unsafeFromString "bmp" ] }
  , "image/png": { extensions: [ unsafeFromString "png" ] }
  , "image/jpeg":
      { extensions: [ unsafeFromString "jpeg", unsafeFromString "jpg", unsafeFromString "jpe" ] }
  , "image/svg+xml": { extensions: [ unsafeFromString "svg", unsafeFromString "svgz" ] }
  , "text/css": { extensions: [ unsafeFromString "css" ] }
  , "image/webp": { extensions: [ unsafeFromString "webp" ] }
  , "image/vnd.microsoft.icon": { extensions: [ unsafeFromString "ico" ] }
  , "text/calendar": { extensions: [ unsafeFromString "ics", unsafeFromString "ifb" ] }
  , "text/html":
      { extensions: [ unsafeFromString "html", unsafeFromString "htm", unsafeFromString "shtml" ] }
  , "text/csv": { extensions: [ unsafeFromString "csv" ] }
  , "text/javascript": { extensions: [ unsafeFromString "js", unsafeFromString "mjs" ] }
  , "video/mp4":
      { extensions: [ unsafeFromString "mp4", unsafeFromString "mp4v", unsafeFromString "mpg4" ] }
  , "video/3gpp2": { extensions: [ unsafeFromString "3g2" ] }
  , "video/3gpp": { extensions: [ unsafeFromString "3gp", unsafeFromString "3gpp" ] }
  , "video/mp2t": { extensions: [ unsafeFromString "ts" ] }
  , "video/ogg": { extensions: [ unsafeFromString "ogv" ] }
  , "video/mpeg":
      { extensions:
          [ unsafeFromString "mpeg"
          , unsafeFromString "mpg"
          , unsafeFromString "mpe"
          , unsafeFromString "m1v"
          , unsafeFromString "m2v"
          ]
      }
  , "video/webm": { extensions: [ unsafeFromString "webm" ] }
  , "video/x-msvideo": { extensions: [ unsafeFromString "avi" ] }
  }
