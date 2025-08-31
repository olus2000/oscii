================================================================================
                Olus2000 Standard Code for Information Exchange
================================================================================

Specification for the OSCII standard.


Overview
========

OSCII describes an encoding of text, for example: documents, source code, or
messages. It is a constant-width encoding using 8 bits per codepoint. It is
inspired by the traditional ASCII encoding but adapts its concepts for the needs
of the modern world. OSCII is:

* **Simple**

  One 8-bit byte stores one character.

* **Complete**

  Capable of encoding every character a reasonable human may want to encode in
  an electronic medium.

* **Extendable**

  In case an unreasonable human wishes to use OSCII the highest bit can be used
  to indicate a usage-specific extension.

* **Modern**

  OSCII ditches all the obsolete control codes that made sense back in
  typewriter times in favor of a full set of letters and numbers.

* **Sensible**

  Care has been taken to place related symbols on adjacent encodings. No more
  wondering why ``(`` differs from ``)`` by one, but ``{`` from ``}`` by two!

* **Embracing innovation**

  OSCII is the only encoding standard including oficial support for `Semantic
  Indentation Control`_, which the Unicode standard hasn't implemented in the
  *two years* since its proposal.


.. _Semantic Indentation Control: https://github.com/pyrotelekinetic/SIC


Encoding
========

The following table describes the meaning of OSCII codes. For some characters
their closest ASCII equivalents have been provided. For all characters their
recommended Unicode encoding have been provided.

==== ======================= ====================== ===== =======
Code           Name                  Comment        ASCII Unicode
==== ======================= ====================== ===== =======
0x00 NEW LINE                                       0x0A  0x0A
0x01 TAB                                            0x09  0x09
0x02 INDENT                  See also SIC_                0xF32A
0x03 DEDENT                  See also SIC_                0xF32B
0x04 SPACE                                          0x20  0x20
0x05 PERIOD                                         0x2E  0x2E
0x06 COMMA                                          0x2C  0x2C
0x07 EXCLAMATION MARK                               0x21  0x21
0x08 QUESTION MARK                                  0x3F  0x3F
0x09 COLON                                          0x3A  0x3A
0x0A SEMICOLON                                      0x3B  0x3B
0x0B APOSTROPHE                                     0x27  0x27
0x0C QUOTATION MARK                                 0x22  0x22
0x0D BACKTICK                                       0x60  0x60
0x0E OCTOTHORPE                                     0x23  0x23
0x0F CURRENCY                                       0x24  0x24
0x10 AT                                             0x40  0x40
0x11 ESCAPE                                         0x5C  0x5C
0x12 UNDERSCORE                                     0x5F  0x5F
0x13 CROSS                                          0x78  0x78
0x14 LARGE BALLOON                                  0x51  0x51
0x15 SMALL BALLOON                                  0x71  0x71
0x16 DIGIT UNTEN                                          0xF8F6
0x17 DIGIT UNNINE                                         0xF8F7
0x18 DIGIT UNEIGHT                                        0xF8F8
0x19 DIGIT UNSEVEN                                        0xF8F9
0x1A DIGIT UNSIX                                          0xF8FA
0x1B DIGIT UNFIVE                                         0xF8FB
0x1C DIGIT UNFOUR                                         0xF8FC
0x1D DIGIT UNTHREE                                        0xF8FD
0x1E DIGIT UNTWO                                          0xF8FE
0x1F DIGIT UNONE                                          0xF8FF
0x20 DIGIT ZERO                                     0x30  0x30
0x21 DIGIT ONE                                      0x31  0x31
0x22 DIGIT TWO                                      0x32  0x32
0x23 DIGIT THREE                                    0x33  0x33
0x24 DIGIT FOUR                                     0x34  0x34
0x25 DIGIT FIVE                                     0x35  0x35
0x26 DIGIT SIX                                      0x36  0x36
0x27 DIGIT SEVEN                                    0x37  0x37
0x28 DIGIT EIGHT                                    0x38  0x38
0x29 DIGIT NINE                                     0x39  0x39
0x2A DIGIT TEN                                      0x58  0x58
0x2B ARROW LEFT                                     0x3C  0x3C
0x2C ARROW DOWN                                     0x76  0x76
0x2D ARROW UP                                       0x5E  0x5E
0x2E ARROW RIGHT                                    0x3E  0x3E
0x2F ADDITION SIGN                                  0x2B  0x2B
0x30 SUBTRACTION SIGN                               0x2D  0x2D
0x31 MULTIPLICATION SIGN                            0x2A  0x2A
0x32 DIVISION SIGN                                  0x2F  0x2F
0x33 MODULO SIGN                                    0x25  0x25
0x34 EQUALITY SIGN                                  0x3D  0x3D
0x35 AND SIGN                                       0x26  0x26
0x36 OR SIGN                                        0x7C  0x7C
0x37 NOT SIGN                                       0x7E  0x7E
0x38 ROMAN NUMERAL FIVE      The only one missing   0x56  0x56
0x39 OPEN PARENTHESIS                               0x28  0x28
0x3A CLOSE PARENTHESIS                              0x29  0x29
0x3B OPEN BRACKET                                   0x5B  0x5B
0x3C CLOSE BRACKET                                  0x5D  0x5D
0x3D OPEN BRACE                                     0x7B  0x7B
0x3E CLOSE BRACE                                    0x7D  0x7D
0x3F EMOJI                   For expressing emotion       0x1F97A
0x40 POLISH SMALL LETTER A                          0x61  0x61
0x41 POLISH SMALL LETTER Ą                                0x105
0x42 POLISH SMALL LETTER B                          0x62  0x62
0x43 POLISH SMALL LETTER C                          0x63  0x63
0x44 POLISH SMALL LETTER Ć                                0x107
0x45 POLISH SMALL LETTER D                          0x64  0x64
0x46 POLISH SMALL LETTER E                          0x65  0x65
0x47 POLISH SMALL LETTER Ę                                0x119
0x48 POLISH SMALL LETTER F                          0x66  0x66
0x49 POLISH SMALL LETTER G                          0x67  0x67
0x4A POLISH SMALL LETTER H                          0x68  0x68
0x4B POLISH SMALL LETTER I                          0x69  0x69
0x4C POLISH SMALL LETTER J                          0x6A  0x6A
0x4D POLISH SMALL LETTER K                          0x6B  0x6B
0x4E POLISH SMALL LETTER L                          0x6C  0x6C
0x4F POLISH SMALL LETTER Ł                                0x142
0x50 POLISH SMALL LETTER M                          0x6D  0x6D
0x51 POLISH SMALL LETTER N                          0x6E  0x6E
0x52 POLISH SMALL LETTER Ń                                0x144
0x53 POLISH SMALL LETTER O                          0x6F  0x6F
0x54 POLISH SMALL LETTER Ó                                0xF3
0x55 POLISH SMALL LETTER P                          0x70  0x70
0x56 POLISH SMALL LETTER R                          0x72  0x72
0x57 POLISH SMALL LETTER S                          0x73  0x73
0x58 POLISH SMALL LETTER Ś                                0x15B
0x59 POLISH SMALL LETTER T                          0x74  0x74
0x5A POLISH SMALL LETTER U                          0x75  0x75
0x5B POLISH SMALL LETTER W                          0x77  0x77
0x5C POLISH SMALL LETTER Y                          0x79  0x79
0x5D POLISH SMALL LETTER Z                          0x7A  0x7A
0x5E POLISH SMALL LETTER Ź                                0x17A
0x5F POLISH SMALL LETTER Ż                                0x17C
0x60 POLISH CAPITAL LETTER A                        0x41  0x41
0x61 POLISH CAPITAL LETTER Ą                              0x104
0x62 POLISH CAPITAL LETTER B                        0x42  0x42
0x63 POLISH CAPITAL LETTER C                        0x43  0x43
0x64 POLISH CAPITAL LETTER Ć                              0x106
0x65 POLISH CAPITAL LETTER D                        0x44  0x44
0x66 POLISH CAPITAL LETTER E                        0x45  0x45
0x67 POLISH CAPITAL LETTER Ę                              0x118
0x68 POLISH CAPITAL LETTER F                        0x46  0x46
0x69 POLISH CAPITAL LETTER G                        0x47  0x47
0x6A POLISH CAPITAL LETTER H                        0x48  0x48
0x6B POLISH CAPITAL LETTER I                        0x49  0x49
0x6C POLISH CAPITAL LETTER J                        0x4A  0x4A
0x6D POLISH CAPITAL LETTER K                        0x4B  0x4B
0x6E POLISH CAPITAL LETTER L                        0x4C  0x4C
0x6F POLISH CAPITAL LETTER Ł                              0x141
0x70 POLISH CAPITAL LETTER M                        0x4D  0x4D
0x71 POLISH CAPITAL LETTER N                        0x4E  0x4E
0x72 POLISH CAPITAL LETTER Ń                              0x143
0x73 POLISH CAPITAL LETTER O                        0x4F  0x4F
0x74 POLISH CAPITAL LETTER Ó                              0xD3
0x75 POLISH CAPITAL LETTER P                        0x50  0x50
0x76 POLISH CAPITAL LETTER R                        0x52  0x52
0x77 POLISH CAPITAL LETTER S                        0x53  0x53
0x78 POLISH CAPITAL LETTER Ś                              0x15A
0x79 POLISH CAPITAL LETTER T                        0x54  0x54
0x7A POLISH CAPITAL LETTER U                        0x55  0x55
0x7B POLISH CAPITAL LETTER W                        0x57  0x57
0x7C POLISH CAPITAL LETTER Y                        0x59  0x59
0x7D POLISH CAPITAL LETTER Z                        0x5A  0x5A
0x7E POLISH CAPITAL LETTER Ź                              0x179
0x7F POLISH CAPITAL LETTER Ż                              0x17B
==== ======================= ====================== ===== =======

Bytes with values above 0x7F are reserved for private use and should be avoided
when encoding documents or messages meant to be shared.

**Note:** OSCII encodes several characters not described by Unicode (negative
digits, SIC_ codes) into the `Private Use Area`_ (SIC_ codes according to SIC_
specification, negative digits to the range F8F6-F8FF). If you intend to use
the decoded content with non-OSCII tools make sure that these codes won't cause
collisions or preprocess the decoded content to remove them.


.. _SIC: https://github.com/pyrotelekinetic/SIC
.. _Private Use Area: https://www.unicode.org/charts/PDF/UE000.pdf


Implementation
==============

File ``oscii.factor`` contains a transcoder between OSCII and Unicode. The
singleton ``oscii`` implements the Factor encoding protocol, meaning it can be
used with all stream-related words::

  "/path/to/file" oscii file-contents
  "/path/to/file" oscii [ actions ] with-file-writer

The vocab also implements a CLI for transcoding files between OSCII and UTF-8::

  factor oscii.factor <direction> <source> <target>
  factor -run=oscii <direction> <source> <target>

direction : ``e`` or ``d``
  Chooses between ``e``\ ncoding and ``d``\ ecoding.

source : path
  When encoding ``source`` should be an UTF-8 file. When decoding ``source``
  should be an OSCII file.

target : path
  Result of transcoding will be saved to ``target``.


Font
====

A reference font is provided in the form of a character sheet ``font.png``. It
includes reference for displaying all printable OSCII codes (4 through 127) in
an 8x16 pixel font.
