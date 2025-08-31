! Copyright (C) 2025 Aleksander "olus2000" Sabak.
! See https://factorcode.org/license.txt for BSD license.
USING: assocs biassocs combinators command-line io io.encodings
io.encodings.utf8 io.files kernel literals multiline namespaces
sequences ;
IN: oscii


SINGLETON: oscii


CONSTANT: oscii>unicode-map
$[ { "\n\t\u00F32A\u00F32B .,!?:;'\"`#$"
     "@\\_xQq\u00F8F6\u00F8F7"
     "\u00F8F8\u00F8F9\u00F8FA\u00F8FB"
     "\u00F8FC\u00F8FD\u00F8FE\u00F8FF"
     "0123456789X<v^>+-*/%=&|~V()[]{}🥺"
     "aąbcćdeęfghijklłmnńoóprsśtuwyzźż"
     "AĄBCĆDEĘFGHIJKLŁMNŃOÓPRSŚTUWYZŹŻ" } concat
   <enumerated> >biassoc ]

CONSTANT: oscii-digits
$[ { { -10 CHAR: \u00F8F6 }
     { -9 CHAR: \u00F8F7 }
     { -8 CHAR: \u00F8F8 }
     { -7 CHAR: \u00F8F9 }
     { -6 CHAR: \u00F8FA }
     { -5 CHAR: \u00F8FB }
     { -4 CHAR: \u00F8FC }
     { -3 CHAR: \u00F8FD }
     { -2 CHAR: \u00F8FE }
     { -1 CHAR: \u00F8FF }
     { 0 CHAR: 0 }
     { 1 CHAR: 1 }
     { 2 CHAR: 2 }
     { 3 CHAR: 3 }
     { 4 CHAR: 4 }
     { 5 CHAR: 5 }
     { 6 CHAR: 6 }
     { 7 CHAR: 7 }
     { 8 CHAR: 8 }
     { 9 CHAR: 9 }
     { 10 CHAR: X } } >biassoc ]

CONSTANT: INDENT CHAR: \u00F32A
CONSTANT: DEDENT CHAR: \u00F32B


M: oscii encode-char
  drop swap oscii>unicode-map value-at
  [ swap stream-write1 ] [ encode-error ] if* ;

M: oscii decode-char
  drop stream-read1 dup
  [ oscii>unicode-map at [ decode-error ] unless* ] when ;


<PRIVATE

: read-write-all ( -- )
  [ 1024 read dup ] [ write ] while drop ;

: encode-file ( source target -- )
  oscii [ utf8 [ read-write-all ] with-file-reader ]
  with-file-writer ;

: decode-file ( source target -- )
  utf8 [ oscii [ read-write-all ] with-file-reader ]
  with-file-writer ;


CONSTANT: help
"Usage: factor oscii.factor <direction> <source> <target>

direction : e or d print
  Chooses between ``e``\\ ncoding and ``d``\\ ecoding

source : path
  When encoding ``source`` should be an UTF-8 file. When decoding ``source``
  should be an OSCII file.

target : path
  Result of transcoding will be saved to ``target``."

: main ( -- )
  command-line get dup length 3 =
  [ first3 rot first
    { { CHAR: e [ encode-file ] }
      { CHAR: d [ decode-file ] }
      [ 3drop help print ] } case ]
  [ drop help print ] if ;

PRIVATE>

MAIN: main
