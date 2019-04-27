package Mast_Results_Parser_Shift_Reduce is

    type Small_Integer is range -32_000 .. 32_000;

    type Shift_Reduce_Entry is record
        T   : Small_Integer;
        Act : Small_Integer;
    end record;
    pragma Pack(Shift_Reduce_Entry);

    subtype Row is Integer range -1 .. Integer'Last;

  --pragma suppress(index_check);

    type Shift_Reduce_Array is array (Row  range <>) of Shift_Reduce_Entry;

    Shift_Reduce_Matrix : constant Shift_Reduce_Array :=
        ( (-1,-1) -- Dummy Entry

-- state  0
,( 12, 9),( 25, 13),( 50, 10),( 59, 12)
,( 60, 14),( 65, 11),(-1,-3000)
-- state  1
,( 0,-3001)
,( 12, 9),( 25, 13),( 50, 10),( 59, 12)
,( 60, 14),( 65, 11),(-1,-3000)
-- state  2
,(-1,-2)

-- state  3
,(-1,-3)
-- state  4
,(-1,-4)
-- state  5
,(-1,-5)
-- state  6
,(-1,-6)

-- state  7
,(-1,-7)
-- state  8
,(-1,-8)
-- state  9
,( 2, 17),(-1,-3000)

-- state  10
,( 2, 18),(-1,-3000)
-- state  11
,( 2, 19),(-1,-3000)

-- state  12
,( 2, 20),(-1,-3000)
-- state  13
,( 2, 21),(-1,-3000)

-- state  14
,( 2, 22),(-1,-3000)
-- state  15
,(-1,-3000)
-- state  16
,(-1,-1)

-- state  17
,( 13, 31),( 14, 32),( 15, 33),( 16, 34)
,( 17, 35),( 18, 36),(-1,-3000)
-- state  18
,( 18, 42)
,( 26, 41),(-1,-3000)
-- state  19
,( 18, 48),( 26, 47)
,(-1,-3000)
-- state  20
,( 18, 54),( 26, 53),(-1,-3000)

-- state  21
,( 18, 60),( 26, 59),(-1,-3000)
-- state  22
,( 18, 66)
,( 26, 65),(-1,-3000)
-- state  23
,(-1,-10)
-- state  24
,( 3, 67)
,( 5, 68),(-1,-3000)
-- state  25
,(-1,-12)
-- state  26
,(-1,-13)

-- state  27
,(-1,-14)
-- state  28
,(-1,-15)
-- state  29
,(-1,-16)
-- state  30
,(-1,-17)

-- state  31
,( 4, 69),(-1,-3000)
-- state  32
,( 4, 70),(-1,-3000)

-- state  33
,( 4, 71),(-1,-3000)
-- state  34
,( 4, 72),(-1,-3000)

-- state  35
,( 4, 73),(-1,-3000)
-- state  36
,( 4, 74),(-1,-3000)

-- state  37
,(-1,-33)
-- state  38
,( 3, 75),( 5, 76),(-1,-3000)

-- state  39
,(-1,-35)
-- state  40
,(-1,-36)
-- state  41
,( 4, 77),(-1,-3000)

-- state  42
,( 4, 78),(-1,-3000)
-- state  43
,(-1,-63)
-- state  44
,( 3, 79)
,( 5, 80),(-1,-3000)
-- state  45
,(-1,-65)
-- state  46
,(-1,-66)

-- state  47
,( 4, 81),(-1,-3000)
-- state  48
,( 4, 82),(-1,-3000)

-- state  49
,(-1,-84)
-- state  50
,( 3, 83),( 5, 84),(-1,-3000)

-- state  51
,(-1,-86)
-- state  52
,(-1,-87)
-- state  53
,( 4, 85),(-1,-3000)

-- state  54
,( 4, 86),(-1,-3000)
-- state  55
,(-1,-185)
-- state  56
,( 3, 87)
,( 5, 88),(-1,-3000)
-- state  57
,(-1,-187)
-- state  58
,(-1,-188)

-- state  59
,( 4, 89),(-1,-3000)
-- state  60
,( 4, 90),(-1,-3000)

-- state  61
,(-1,-281)
-- state  62
,( 3, 91),( 5, 92),(-1,-3000)

-- state  63
,(-1,-283)
-- state  64
,(-1,-284)
-- state  65
,( 4, 93),(-1,-3000)

-- state  66
,( 4, 94),(-1,-3000)
-- state  67
,( 6, 95),(-1,-3000)

-- state  68
,( 13, 31),( 14, 32),( 15, 33),( 16, 34)
,( 17, 35),( 18, 36),(-1,-3000)
-- state  69
,( 7, 97)
,(-1,-3000)
-- state  70
,( 10, 98),(-1,-3000)
-- state  71
,( 11, 99)
,(-1,-3000)
-- state  72
,( 11, 100),(-1,-3000)
-- state  73
,( 10, 101)
,(-1,-3000)
-- state  74
,( 2, 102),(-1,-3000)
-- state  75
,( 6, 103)
,(-1,-3000)
-- state  76
,( 18, 42),( 26, 41),(-1,-3000)

-- state  77
,( 7, 105),(-1,-3000)
-- state  78
,( 2, 106),(-1,-3000)

-- state  79
,( 6, 107),(-1,-3000)
-- state  80
,( 18, 48),( 26, 47)
,(-1,-3000)
-- state  81
,( 7, 109),(-1,-3000)
-- state  82
,( 2, 110)
,(-1,-3000)
-- state  83
,( 6, 111),(-1,-3000)
-- state  84
,( 18, 54)
,( 26, 53),(-1,-3000)
-- state  85
,( 7, 113),(-1,-3000)

-- state  86
,( 2, 114),(-1,-3000)
-- state  87
,( 6, 115),(-1,-3000)

-- state  88
,( 18, 60),( 26, 59),(-1,-3000)
-- state  89
,( 7, 117)
,(-1,-3000)
-- state  90
,( 2, 118),(-1,-3000)
-- state  91
,( 6, 119)
,(-1,-3000)
-- state  92
,( 18, 66),( 26, 65),(-1,-3000)

-- state  93
,( 7, 121),(-1,-3000)
-- state  94
,( 2, 122),(-1,-3000)

-- state  95
,(-1,-9)
-- state  96
,(-1,-11)
-- state  97
,(-1,-18)
-- state  98
,(-1,-19)

-- state  99
,(-1,-20)
-- state  100
,(-1,-21)
-- state  101
,(-1,-22)
-- state  102
,( 2, 127)
,(-1,-3000)
-- state  103
,(-1,-32)
-- state  104
,(-1,-34)
-- state  105
,(-1,-37)

-- state  106
,( 2, 133),(-1,-3000)
-- state  107
,(-1,-62)
-- state  108
,(-1,-64)

-- state  109
,(-1,-67)
-- state  110
,( 2, 140),(-1,-3000)
-- state  111
,(-1,-83)

-- state  112
,(-1,-85)
-- state  113
,(-1,-88)
-- state  114
,( 2, 144),(-1,-3000)

-- state  115
,(-1,-184)
-- state  116
,(-1,-186)
-- state  117
,(-1,-189)
-- state  118
,( 2, 150)
,(-1,-3000)
-- state  119
,(-1,-280)
-- state  120
,(-1,-282)
-- state  121
,(-1,-285)

-- state  122
,( 2, 155),(-1,-3000)
-- state  123
,( 3, 156),( 5, 157)
,(-1,-3000)
-- state  124
,(-1,-25)
-- state  125
,(-1,-26)
-- state  126
,(-1,-27)

-- state  127
,( 19, 158),(-1,-3000)
-- state  128
,( 3, 159),( 5, 160)
,(-1,-3000)
-- state  129
,(-1,-40)
-- state  130
,(-1,-41)
-- state  131
,(-1,-42)

-- state  132
,(-1,-43)
-- state  133
,( 19, 161),(-1,-3000)
-- state  134
,( 3, 162)
,( 5, 163),(-1,-3000)
-- state  135
,(-1,-70)
-- state  136
,(-1,-71)

-- state  137
,(-1,-72)
-- state  138
,(-1,-73)
-- state  139
,(-1,-74)
-- state  140
,( 19, 164)
,(-1,-3000)
-- state  141
,( 3, 165),( 5, 166),(-1,-3000)

-- state  142
,(-1,-91)
-- state  143
,(-1,-92)
-- state  144
,( 19, 167),(-1,-3000)

-- state  145
,( 3, 168),( 5, 169),(-1,-3000)
-- state  146
,(-1,-192)

-- state  147
,(-1,-193)
-- state  148
,(-1,-194)
-- state  149
,(-1,-195)
-- state  150
,( 19, 170)
,(-1,-3000)
-- state  151
,( 3, 171),( 5, 172),(-1,-3000)

-- state  152
,(-1,-288)
-- state  153
,(-1,-289)
-- state  154
,(-1,-290)
-- state  155
,( 19, 173)
,(-1,-3000)
-- state  156
,(-1,-23)
-- state  157
,( 2, 127),(-1,-3000)

-- state  158
,( 4, 175),(-1,-3000)
-- state  159
,(-1,-38)
-- state  160
,( 2, 133)
,(-1,-3000)
-- state  161
,( 4, 177),(-1,-3000)
-- state  162
,(-1,-68)

-- state  163
,( 2, 140),(-1,-3000)
-- state  164
,( 4, 179),(-1,-3000)

-- state  165
,(-1,-89)
-- state  166
,( 2, 144),(-1,-3000)
-- state  167
,( 4, 181)
,(-1,-3000)
-- state  168
,(-1,-190)
-- state  169
,( 2, 150),(-1,-3000)

-- state  170
,( 4, 183),(-1,-3000)
-- state  171
,(-1,-286)
-- state  172
,( 2, 155)
,(-1,-3000)
-- state  173
,( 4, 185),(-1,-3000)
-- state  174
,(-1,-24)

-- state  175
,( 20, 186),( 22, 187),(-1,-3000)
-- state  176
,(-1,-39)

-- state  177
,( 20, 188),( 51, 189),( 57, 190),(-1,-3000)

-- state  178
,(-1,-69)
-- state  179
,( 66, 191),( 69, 194),( 70, 193)
,( 89, 192),(-1,-3000)
-- state  180
,(-1,-90)
-- state  181
,( 20, 195)
,(-1,-3000)
-- state  182
,(-1,-191)
-- state  183
,( 20, 196),( 27, 197)
,( 36, 198),(-1,-3000)
-- state  184
,(-1,-287)
-- state  185
,( 61, 199)
,( 63, 200),(-1,-3000)
-- state  186
,( 5, 201),(-1,-3000)

-- state  187
,( 5, 202),(-1,-3000)
-- state  188
,( 5, 203),(-1,-3000)

-- state  189
,( 5, 204),(-1,-3000)
-- state  190
,( 5, 205),(-1,-3000)

-- state  191
,( 5, 206),(-1,-3000)
-- state  192
,( 5, 207),(-1,-3000)

-- state  193
,( 5, 208),(-1,-3000)
-- state  194
,( 5, 209),(-1,-3000)

-- state  195
,( 5, 210),(-1,-3000)
-- state  196
,( 5, 211),(-1,-3000)

-- state  197
,( 5, 212),(-1,-3000)
-- state  198
,( 5, 213),(-1,-3000)

-- state  199
,( 5, 214),(-1,-3000)
-- state  200
,( 5, 215),(-1,-3000)

-- state  201
,(-1,-28)
-- state  202
,(-1,-30)
-- state  203
,(-1,-44)
-- state  204
,(-1,-46)

-- state  205
,(-1,-60)
-- state  206
,(-1,-75)
-- state  207
,(-1,-77)
-- state  208
,(-1,-79)

-- state  209
,(-1,-81)
-- state  210
,(-1,-93)
-- state  211
,(-1,-196)
-- state  212
,(-1,-198)

-- state  213
,(-1,-234)
-- state  214
,(-1,-291)
-- state  215
,(-1,-293)
-- state  216
,( 21, 231)
,(-1,-3000)
-- state  217
,( 23, 232),(-1,-3000)
-- state  218
,( 21, 233)
,(-1,-3000)
-- state  219
,( 52, 241),( 53, 242),( 54, 243)
,( 55, 244),( 56, 245),(-1,-3000)
-- state  220
,( 58, 246)
,(-1,-3000)
-- state  221
,( 67, 247),(-1,-3000)
-- state  222
,( 68, 248)
,(-1,-3000)
-- state  223
,( 52, 249),(-1,-3000)
-- state  224
,( 58, 250)
,(-1,-3000)
-- state  225
,( 21, 251),(-1,-3000)
-- state  226
,( 21, 252)
,(-1,-3000)
-- state  227
,( 28, 263),( 29, 264),( 30, 265)
,( 31, 266),( 32, 267),( 33, 268),( 34, 269)
,( 35, 270),(-1,-3000)
-- state  228
,( 28, 263),( 29, 264)
,( 30, 265),( 31, 266),( 32, 267),( 33, 268)
,( 34, 269),( 35, 270),( 37, 289),( 38, 290)
,( 39, 291),( 40, 292),( 41, 293),( 42, 294)
,( 43, 295),( 44, 296),(-1,-3000)
-- state  229
,( 62, 297)
,(-1,-3000)
-- state  230
,( 64, 298),(-1,-3000)
-- state  231
,( 4, 299)
,(-1,-3000)
-- state  232
,( 4, 300),(-1,-3000)
-- state  233
,( 4, 301)
,(-1,-3000)
-- state  234
,(-1,-48)
-- state  235
,( 3, 302),( 5, 303)
,(-1,-3000)
-- state  236
,(-1,-50)
-- state  237
,(-1,-51)
-- state  238
,(-1,-52)

-- state  239
,(-1,-53)
-- state  240
,(-1,-54)
-- state  241
,( 4, 304),(-1,-3000)

-- state  242
,( 4, 305),(-1,-3000)
-- state  243
,( 4, 306),(-1,-3000)

-- state  244
,( 4, 307),(-1,-3000)
-- state  245
,( 4, 308),(-1,-3000)

-- state  246
,( 4, 309),(-1,-3000)
-- state  247
,( 4, 310),(-1,-3000)

-- state  248
,( 4, 311),(-1,-3000)
-- state  249
,( 4, 312),(-1,-3000)

-- state  250
,( 4, 313),(-1,-3000)
-- state  251
,( 4, 314),(-1,-3000)

-- state  252
,( 4, 315),(-1,-3000)
-- state  253
,(-1,-200)
-- state  254
,( 3, 316)
,( 5, 317),(-1,-3000)
-- state  255
,(-1,-202)
-- state  256
,(-1,-203)

-- state  257
,(-1,-204)
-- state  258
,(-1,-205)
-- state  259
,(-1,-206)
-- state  260
,(-1,-207)

-- state  261
,(-1,-208)
-- state  262
,(-1,-209)
-- state  263
,( 4, 318),(-1,-3000)

-- state  264
,( 4, 319),(-1,-3000)
-- state  265
,( 4, 320),(-1,-3000)

-- state  266
,( 4, 321),(-1,-3000)
-- state  267
,( 4, 322),(-1,-3000)

-- state  268
,( 4, 323),(-1,-3000)
-- state  269
,( 4, 324),(-1,-3000)

-- state  270
,( 4, 325),(-1,-3000)
-- state  271
,(-1,-236)
-- state  272
,( 3, 326)
,( 5, 327),(-1,-3000)
-- state  273
,(-1,-238)
-- state  274
,(-1,-239)

-- state  275
,(-1,-240)
-- state  276
,(-1,-241)
-- state  277
,(-1,-242)
-- state  278
,(-1,-243)

-- state  279
,(-1,-244)
-- state  280
,(-1,-245)
-- state  281
,(-1,-246)
-- state  282
,(-1,-247)

-- state  283
,(-1,-248)
-- state  284
,(-1,-249)
-- state  285
,(-1,-250)
-- state  286
,(-1,-251)

-- state  287
,(-1,-252)
-- state  288
,(-1,-253)
-- state  289
,( 4, 328),(-1,-3000)

-- state  290
,( 4, 329),(-1,-3000)
-- state  291
,( 4, 330),(-1,-3000)

-- state  292
,( 4, 331),(-1,-3000)
-- state  293
,( 4, 332),(-1,-3000)

-- state  294
,( 4, 333),(-1,-3000)
-- state  295
,( 4, 334),(-1,-3000)

-- state  296
,( 4, 335),(-1,-3000)
-- state  297
,( 4, 336),(-1,-3000)

-- state  298
,( 4, 337),(-1,-3000)
-- state  299
,( 8, 338),(-1,-3000)

-- state  300
,( 24, 339),(-1,-3000)
-- state  301
,( 8, 340),(-1,-3000)

-- state  302
,(-1,-47)
-- state  303
,( 52, 241),( 53, 242),( 54, 243)
,( 55, 244),( 56, 245),(-1,-3000)
-- state  304
,( 8, 342)
,(-1,-3000)
-- state  305
,( 8, 343),(-1,-3000)
-- state  306
,( 8, 344)
,(-1,-3000)
-- state  307
,( 8, 345),(-1,-3000)
-- state  308
,( 8, 346)
,(-1,-3000)
-- state  309
,( 8, 347),(-1,-3000)
-- state  310
,( 8, 348)
,(-1,-3000)
-- state  311
,( 8, 349),(-1,-3000)
-- state  312
,( 8, 350)
,(-1,-3000)
-- state  313
,( 8, 351),(-1,-3000)
-- state  314
,( 8, 352)
,(-1,-3000)
-- state  315
,( 8, 353),(-1,-3000)
-- state  316
,(-1,-199)

-- state  317
,( 28, 263),( 29, 264),( 30, 265),( 31, 266)
,( 32, 267),( 33, 268),( 34, 269),( 35, 270)
,(-1,-3000)
-- state  318
,( 7, 355),(-1,-3000)
-- state  319
,( 8, 356)
,(-1,-3000)
-- state  320
,( 8, 357),(-1,-3000)
-- state  321
,( 8, 358)
,(-1,-3000)
-- state  322
,( 8, 359),(-1,-3000)
-- state  323
,( 2, 360)
,(-1,-3000)
-- state  324
,( 2, 361),(-1,-3000)
-- state  325
,( 2, 362)
,(-1,-3000)
-- state  326
,(-1,-235)
-- state  327
,( 28, 263),( 29, 264)
,( 30, 265),( 31, 266),( 32, 267),( 33, 268)
,( 34, 269),( 35, 270),( 37, 289),( 38, 290)
,( 39, 291),( 40, 292),( 41, 293),( 42, 294)
,( 43, 295),( 44, 296),(-1,-3000)
-- state  328
,( 8, 364)
,(-1,-3000)
-- state  329
,( 8, 365),(-1,-3000)
-- state  330
,( 8, 366)
,(-1,-3000)
-- state  331
,( 8, 367),(-1,-3000)
-- state  332
,( 8, 368)
,(-1,-3000)
-- state  333
,( 2, 369),(-1,-3000)
-- state  334
,( 2, 370)
,(-1,-3000)
-- state  335
,( 2, 371),(-1,-3000)
-- state  336
,( 2, 378)
,(-1,-3000)
-- state  337
,( 2, 381),(-1,-3000)
-- state  338
,( 3, 383)
,(-1,-3000)
-- state  339
,( 3, 384),(-1,-3000)
-- state  340
,( 3, 385)
,(-1,-3000)
-- state  341
,(-1,-49)
-- state  342
,(-1,-55)
-- state  343
,(-1,-56)

-- state  344
,(-1,-57)
-- state  345
,(-1,-58)
-- state  346
,(-1,-59)
-- state  347
,( 3, 386)
,(-1,-3000)
-- state  348
,( 3, 387),(-1,-3000)
-- state  349
,( 3, 388)
,(-1,-3000)
-- state  350
,( 3, 389),(-1,-3000)
-- state  351
,( 3, 390)
,(-1,-3000)
-- state  352
,( 3, 391),(-1,-3000)
-- state  353
,( 3, 392)
,(-1,-3000)
-- state  354
,(-1,-201)
-- state  355
,(-1,-210)
-- state  356
,(-1,-211)

-- state  357
,(-1,-212)
-- state  358
,(-1,-213)
-- state  359
,(-1,-214)
-- state  360
,( 2, 395)
,(-1,-3000)
-- state  361
,( 2, 398),(-1,-3000)
-- state  362
,( 2, 401)
,(-1,-3000)
-- state  363
,(-1,-237)
-- state  364
,(-1,-254)
-- state  365
,(-1,-255)

-- state  366
,(-1,-256)
-- state  367
,(-1,-257)
-- state  368
,(-1,-258)
-- state  369
,( 2, 404)
,(-1,-3000)
-- state  370
,( 2, 407),(-1,-3000)
-- state  371
,( 2, 410)
,(-1,-3000)
-- state  372
,(-1,-95)
-- state  373
,(-1,-96)
-- state  374
,(-1,-97)

-- state  375
,(-1,-98)
-- state  376
,(-1,-99)
-- state  377
,(-1,-100)
-- state  378
,( 19, 411)
,(-1,-3000)
-- state  379
,( 3, 418),(-1,-3000)
-- state  380
,(-1,-172)

-- state  381
,( 19, 419),(-1,-3000)
-- state  382
,( 3, 421),(-1,-3000)

-- state  383
,(-1,-29)
-- state  384
,(-1,-31)
-- state  385
,(-1,-45)
-- state  386
,(-1,-61)

-- state  387
,(-1,-76)
-- state  388
,(-1,-78)
-- state  389
,(-1,-80)
-- state  390
,(-1,-82)

-- state  391
,(-1,-94)
-- state  392
,(-1,-197)
-- state  393
,(-1,-216)
-- state  394
,( 3, 422)
,( 5, 423),(-1,-3000)
-- state  395
,( 45, 425),(-1,-3000)

-- state  396
,(-1,-223)
-- state  397
,( 3, 427),( 5, 428),(-1,-3000)

-- state  398
,( 45, 425),(-1,-3000)
-- state  399
,(-1,-229)
-- state  400
,( 3, 431)
,( 5, 432),(-1,-3000)
-- state  401
,( 45, 425),(-1,-3000)

-- state  402
,(-1,-260)
-- state  403
,( 3, 435),( 5, 436),(-1,-3000)

-- state  404
,( 45, 425),(-1,-3000)
-- state  405
,(-1,-266)
-- state  406
,( 3, 439)
,( 5, 440),(-1,-3000)
-- state  407
,( 47, 441),(-1,-3000)

-- state  408
,(-1,-272)
-- state  409
,( 3, 443),( 5, 444),(-1,-3000)

-- state  410
,( 45, 425),(-1,-3000)
-- state  411
,( 4, 446),(-1,-3000)

-- state  412
,(-1,-101)
-- state  413
,(-1,-112)
-- state  414
,(-1,-121)
-- state  415
,(-1,-130)

-- state  416
,(-1,-145)
-- state  417
,(-1,-161)
-- state  418
,(-1,-292)
-- state  419
,( 4, 453)
,(-1,-3000)
-- state  420
,(-1,-173)
-- state  421
,(-1,-294)
-- state  422
,(-1,-215)

-- state  423
,( 2, 395),(-1,-3000)
-- state  424
,( 5, 456),(-1,-3000)

-- state  425
,( 4, 457),(-1,-3000)
-- state  426
,( 3, 458),(-1,-3000)

-- state  427
,(-1,-222)
-- state  428
,( 2, 398),(-1,-3000)
-- state  429
,( 5, 460)
,(-1,-3000)
-- state  430
,( 3, 461),(-1,-3000)
-- state  431
,(-1,-228)

-- state  432
,( 2, 401),(-1,-3000)
-- state  433
,( 5, 463),(-1,-3000)

-- state  434
,( 3, 464),(-1,-3000)
-- state  435
,(-1,-259)
-- state  436
,( 2, 404)
,(-1,-3000)
-- state  437
,( 5, 466),(-1,-3000)
-- state  438
,( 3, 467)
,(-1,-3000)
-- state  439
,(-1,-265)
-- state  440
,( 2, 407),(-1,-3000)

-- state  441
,( 4, 469),(-1,-3000)
-- state  442
,( 5, 470),(-1,-3000)

-- state  443
,(-1,-271)
-- state  444
,( 2, 410),(-1,-3000)
-- state  445
,( 5, 472)
,(-1,-3000)
-- state  446
,( 71, 473),( 72, 474),( 73, 475)
,( 75, 476),( 80, 477),( 87, 478),(-1,-3000)

-- state  447
,( 3, 479),( 5, 484),(-1,-3000)
-- state  448
,( 3, 486)
,( 5, 484),(-1,-3000)
-- state  449
,( 3, 492),( 5, 484)
,(-1,-3000)
-- state  450
,( 5, 506),(-1,-3000)
-- state  451
,( 5, 515)
,(-1,-3000)
-- state  452
,( 3, 516),( 5, 521),(-1,-3000)

-- state  453
,( 88, 523),(-1,-3000)
-- state  454
,( 3, 524),( 5, 529)
,(-1,-3000)
-- state  455
,(-1,-217)
-- state  456
,( 46, 531),(-1,-3000)

-- state  457
,( 7, 533),(-1,-3000)
-- state  458
,(-1,-218)
-- state  459
,(-1,-224)

-- state  460
,( 46, 534),(-1,-3000)
-- state  461
,(-1,-225)
-- state  462
,(-1,-230)

-- state  463
,( 46, 536),(-1,-3000)
-- state  464
,(-1,-231)
-- state  465
,(-1,-261)

-- state  466
,( 46, 538),(-1,-3000)
-- state  467
,(-1,-262)
-- state  468
,(-1,-267)

-- state  469
,( 8, 540),(-1,-3000)
-- state  470
,( 48, 541),(-1,-3000)

-- state  471
,(-1,-273)
-- state  472
,( 49, 543),(-1,-3000)
-- state  473
,(-1,-103)

-- state  474
,(-1,-114)
-- state  475
,(-1,-123)
-- state  476
,(-1,-132)
-- state  477
,(-1,-147)

-- state  478
,(-1,-163)
-- state  479
,(-1,-104)
-- state  480
,( 3, 545),( 5, 484)
,(-1,-3000)
-- state  481
,(-1,-106)
-- state  482
,(-1,-108)
-- state  483
,(-1,-109)

-- state  484
,( 74, 548),( 86, 547),(-1,-3000)
-- state  485
,(-1,-102)

-- state  486
,(-1,-115)
-- state  487
,( 3, 549),( 5, 484),(-1,-3000)

-- state  488
,(-1,-117)
-- state  489
,(-1,-119)
-- state  490
,(-1,-120)
-- state  491
,(-1,-113)

-- state  492
,(-1,-124)
-- state  493
,( 3, 551),( 5, 484),(-1,-3000)

-- state  494
,(-1,-126)
-- state  495
,(-1,-128)
-- state  496
,(-1,-129)
-- state  497
,(-1,-122)

-- state  498
,(-1,-133)
-- state  499
,( 3, 553),( 5, 506),(-1,-3000)

-- state  500
,(-1,-135)
-- state  501
,(-1,-136)
-- state  502
,(-1,-137)
-- state  503
,(-1,-138)

-- state  504
,(-1,-139)
-- state  505
,(-1,-140)
-- state  506
,( 74, 548),( 76, 555)
,( 77, 556),( 78, 557),( 79, 558),( 86, 547)
,(-1,-3000)
-- state  507
,(-1,-148)
-- state  508
,( 3, 559),( 5, 515)
,(-1,-3000)
-- state  509
,(-1,-150)
-- state  510
,(-1,-151)
-- state  511
,(-1,-152)

-- state  512
,(-1,-153)
-- state  513
,(-1,-154)
-- state  514
,(-1,-155)
-- state  515
,( 81, 561)
,( 82, 562),( 83, 563),( 84, 564),( 85, 565)
,( 86, 547),(-1,-3000)
-- state  516
,(-1,-164)
-- state  517
,( 3, 566)
,( 5, 521),(-1,-3000)
-- state  518
,(-1,-166)
-- state  519
,(-1,-168)

-- state  520
,(-1,-169)
-- state  521
,( 47, 569),( 86, 568),(-1,-3000)

-- state  522
,(-1,-162)
-- state  523
,(-1,-175)
-- state  524
,(-1,-176)
-- state  525
,( 3, 570)
,( 5, 529),(-1,-3000)
-- state  526
,(-1,-178)
-- state  527
,(-1,-180)

-- state  528
,(-1,-181)
-- state  529
,( 86, 572),( 89, 573),(-1,-3000)

-- state  530
,(-1,-174)
-- state  531
,( 4, 574),(-1,-3000)
-- state  532
,(-1,-219)

-- state  533
,(-1,-221)
-- state  534
,( 4, 575),(-1,-3000)
-- state  535
,(-1,-226)

-- state  536
,( 4, 576),(-1,-3000)
-- state  537
,(-1,-232)
-- state  538
,( 4, 577)
,(-1,-3000)
-- state  539
,(-1,-263)
-- state  540
,(-1,-269)
-- state  541
,( 4, 578)
,(-1,-3000)
-- state  542
,( 3, 579),(-1,-3000)
-- state  543
,( 4, 580)
,(-1,-3000)
-- state  544
,( 3, 581),(-1,-3000)
-- state  545
,(-1,-105)

-- state  546
,(-1,-107)
-- state  547
,( 4, 582),(-1,-3000)
-- state  548
,( 4, 583)
,(-1,-3000)
-- state  549
,(-1,-116)
-- state  550
,(-1,-118)
-- state  551
,(-1,-125)

-- state  552
,(-1,-127)
-- state  553
,(-1,-131)
-- state  554
,(-1,-134)
-- state  555
,( 4, 584)
,(-1,-3000)
-- state  556
,( 4, 585),(-1,-3000)
-- state  557
,( 4, 586)
,(-1,-3000)
-- state  558
,( 4, 587),(-1,-3000)
-- state  559
,(-1,-146)

-- state  560
,(-1,-149)
-- state  561
,( 4, 588),(-1,-3000)
-- state  562
,( 4, 589)
,(-1,-3000)
-- state  563
,( 4, 590),(-1,-3000)
-- state  564
,( 4, 591)
,(-1,-3000)
-- state  565
,( 4, 592),(-1,-3000)
-- state  566
,(-1,-165)

-- state  567
,(-1,-167)
-- state  568
,( 4, 593),(-1,-3000)
-- state  569
,( 4, 594)
,(-1,-3000)
-- state  570
,(-1,-177)
-- state  571
,(-1,-179)
-- state  572
,( 4, 595)
,(-1,-3000)
-- state  573
,( 4, 596),(-1,-3000)
-- state  574
,( 8, 597)
,(-1,-3000)
-- state  575
,( 8, 598),(-1,-3000)
-- state  576
,( 8, 599)
,(-1,-3000)
-- state  577
,( 8, 600),(-1,-3000)
-- state  578
,( 8, 601)
,(-1,-3000)
-- state  579
,(-1,-268)
-- state  580
,( 2, 602),(-1,-3000)

-- state  581
,(-1,-274)
-- state  582
,( 9, 603),(-1,-3000)
-- state  583
,( 8, 604)
,(-1,-3000)
-- state  584
,( 8, 605),(-1,-3000)
-- state  585
,( 8, 606)
,(-1,-3000)
-- state  586
,( 8, 607),(-1,-3000)
-- state  587
,( 8, 608)
,(-1,-3000)
-- state  588
,( 8, 609),(-1,-3000)
-- state  589
,( 8, 610)
,(-1,-3000)
-- state  590
,( 8, 611),(-1,-3000)
-- state  591
,( 8, 612)
,(-1,-3000)
-- state  592
,( 8, 613),(-1,-3000)
-- state  593
,( 9, 614)
,(-1,-3000)
-- state  594
,( 8, 615),(-1,-3000)
-- state  595
,( 9, 616)
,(-1,-3000)
-- state  596
,( 8, 617),(-1,-3000)
-- state  597
,(-1,-220)

-- state  598
,(-1,-227)
-- state  599
,(-1,-233)
-- state  600
,(-1,-264)
-- state  601
,(-1,-270)

-- state  602
,( 2, 620),(-1,-3000)
-- state  603
,(-1,-110)
-- state  604
,(-1,-111)

-- state  605
,(-1,-141)
-- state  606
,(-1,-142)
-- state  607
,(-1,-143)
-- state  608
,(-1,-144)

-- state  609
,(-1,-156)
-- state  610
,(-1,-157)
-- state  611
,(-1,-158)
-- state  612
,(-1,-159)

-- state  613
,(-1,-160)
-- state  614
,(-1,-170)
-- state  615
,(-1,-171)
-- state  616
,(-1,-182)

-- state  617
,(-1,-183)
-- state  618
,(-1,-276)
-- state  619
,( 3, 621),( 5, 622)
,(-1,-3000)
-- state  620
,( 47, 441),(-1,-3000)
-- state  621
,(-1,-275)

-- state  622
,( 2, 620),(-1,-3000)
-- state  623
,( 5, 625),(-1,-3000)

-- state  624
,(-1,-277)
-- state  625
,( 48, 626),(-1,-3000)
-- state  626
,( 4, 628)
,(-1,-3000)
-- state  627
,( 3, 629),(-1,-3000)
-- state  628
,( 8, 630)
,(-1,-3000)
-- state  629
,(-1,-278)
-- state  630
,(-1,-279)
);
--  The offset vector
SHIFT_REDUCE_OFFSET : array (0.. 630) of Integer :=
( 0,
 7, 15, 16, 17, 18, 19, 20, 21, 22, 24,
 26, 28, 30, 32, 34, 35, 36, 43, 46, 49,
 52, 55, 58, 59, 62, 63, 64, 65, 66, 67,
 68, 70, 72, 74, 76, 78, 80, 81, 84, 85,
 86, 88, 90, 91, 94, 95, 96, 98, 100, 101,
 104, 105, 106, 108, 110, 111, 114, 115, 116, 118,
 120, 121, 124, 125, 126, 128, 130, 132, 139, 141,
 143, 145, 147, 149, 151, 153, 156, 158, 160, 162,
 165, 167, 169, 171, 174, 176, 178, 180, 183, 185,
 187, 189, 192, 194, 196, 197, 198, 199, 200, 201,
 202, 203, 205, 206, 207, 208, 210, 211, 212, 213,
 215, 216, 217, 218, 220, 221, 222, 223, 225, 226,
 227, 228, 230, 233, 234, 235, 236, 238, 241, 242,
 243, 244, 245, 247, 250, 251, 252, 253, 254, 255,
 257, 260, 261, 262, 264, 267, 268, 269, 270, 271,
 273, 276, 277, 278, 279, 281, 282, 284, 286, 287,
 289, 291, 292, 294, 296, 297, 299, 301, 302, 304,
 306, 307, 309, 311, 312, 315, 316, 320, 321, 326,
 327, 329, 330, 334, 335, 338, 340, 342, 344, 346,
 348, 350, 352, 354, 356, 358, 360, 362, 364, 366,
 368, 369, 370, 371, 372, 373, 374, 375, 376, 377,
 378, 379, 380, 381, 382, 383, 385, 387, 389, 395,
 397, 399, 401, 403, 405, 407, 409, 418, 435, 437,
 439, 441, 443, 445, 446, 449, 450, 451, 452, 453,
 454, 456, 458, 460, 462, 464, 466, 468, 470, 472,
 474, 476, 478, 479, 482, 483, 484, 485, 486, 487,
 488, 489, 490, 492, 494, 496, 498, 500, 502, 504,
 506, 507, 510, 511, 512, 513, 514, 515, 516, 517,
 518, 519, 520, 521, 522, 523, 524, 525, 526, 528,
 530, 532, 534, 536, 538, 540, 542, 544, 546, 548,
 550, 552, 553, 559, 561, 563, 565, 567, 569, 571,
 573, 575, 577, 579, 581, 583, 584, 593, 595, 597,
 599, 601, 603, 605, 607, 609, 610, 627, 629, 631,
 633, 635, 637, 639, 641, 643, 645, 647, 649, 651,
 653, 654, 655, 656, 657, 658, 659, 661, 663, 665,
 667, 669, 671, 673, 674, 675, 676, 677, 678, 679,
 681, 683, 685, 686, 687, 688, 689, 690, 691, 693,
 695, 697, 698, 699, 700, 701, 702, 703, 705, 707,
 708, 710, 712, 713, 714, 715, 716, 717, 718, 719,
 720, 721, 722, 723, 726, 728, 729, 732, 734, 735,
 738, 740, 741, 744, 746, 747, 750, 752, 753, 756,
 758, 760, 761, 762, 763, 764, 765, 766, 767, 769,
 770, 771, 772, 774, 776, 778, 780, 781, 783, 785,
 787, 788, 790, 792, 794, 795, 797, 799, 801, 802,
 804, 806, 808, 809, 811, 813, 820, 823, 826, 829,
 831, 833, 836, 838, 841, 842, 844, 846, 847, 848,
 850, 851, 852, 854, 855, 856, 858, 859, 860, 862,
 864, 865, 867, 868, 869, 870, 871, 872, 873, 874,
 877, 878, 879, 880, 883, 884, 885, 888, 889, 890,
 891, 892, 893, 896, 897, 898, 899, 900, 901, 904,
 905, 906, 907, 908, 909, 910, 917, 918, 921, 922,
 923, 924, 925, 926, 927, 934, 935, 938, 939, 940,
 941, 944, 945, 946, 947, 950, 951, 952, 953, 956,
 957, 959, 960, 961, 963, 964, 966, 967, 969, 970,
 971, 973, 975, 977, 979, 980, 981, 983, 985, 986,
 987, 988, 989, 990, 991, 993, 995, 997, 999, 1000,
 1001, 1003, 1005, 1007, 1009, 1011, 1012, 1013, 1015, 1017,
 1018, 1019, 1021, 1023, 1025, 1027, 1029, 1031, 1033, 1034,
 1036, 1037, 1039, 1041, 1043, 1045, 1047, 1049, 1051, 1053,
 1055, 1057, 1059, 1061, 1063, 1065, 1067, 1068, 1069, 1070,
 1071, 1072, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081,
 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1093,
 1095, 1096, 1098, 1100, 1101, 1103, 1105, 1107, 1109, 1110);
end Mast_Results_Parser_Shift_Reduce;