.class public Lorg/jshybugger/a;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Lorg/jshybugger/c;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/jshybugger/a;->a:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jshybugger/a;->b:J

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 29
    instance-of v0, p0, Lorg/jshybugger/fp;

    if-eqz v0, :cond_a

    .line 30
    check-cast p0, Lorg/jshybugger/fp;

    invoke-interface {p0}, Lorg/jshybugger/fp;->w()Lorg/jshybugger/fp;

    move-result-object p0

    .line 32
    :cond_a
    return-object p0
.end method

.method public static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    return-object v1
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 253
    packed-switch p0, :pswitch_data_26a

    .line 419
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :pswitch_d
    const-string v0, "ERROR"

    .line 415
    :goto_f
    return-object v0

    .line 255
    :pswitch_10
    const-string v0, "EOF"

    goto :goto_f

    .line 256
    :pswitch_13
    const-string v0, "EOL"

    goto :goto_f

    .line 257
    :pswitch_16
    const-string v0, "ENTERWITH"

    goto :goto_f

    .line 258
    :pswitch_19
    const-string v0, "LEAVEWITH"

    goto :goto_f

    .line 259
    :pswitch_1c
    const-string v0, "RETURN"

    goto :goto_f

    .line 260
    :pswitch_1f
    const-string v0, "GOTO"

    goto :goto_f

    .line 261
    :pswitch_22
    const-string v0, "IFEQ"

    goto :goto_f

    .line 262
    :pswitch_25
    const-string v0, "IFNE"

    goto :goto_f

    .line 263
    :pswitch_28
    const-string v0, "SETNAME"

    goto :goto_f

    .line 264
    :pswitch_2b
    const-string v0, "BITOR"

    goto :goto_f

    .line 265
    :pswitch_2e
    const-string v0, "BITXOR"

    goto :goto_f

    .line 266
    :pswitch_31
    const-string v0, "BITAND"

    goto :goto_f

    .line 267
    :pswitch_34
    const-string v0, "EQ"

    goto :goto_f

    .line 268
    :pswitch_37
    const-string v0, "NE"

    goto :goto_f

    .line 269
    :pswitch_3a
    const-string v0, "LT"

    goto :goto_f

    .line 270
    :pswitch_3d
    const-string v0, "LE"

    goto :goto_f

    .line 271
    :pswitch_40
    const-string v0, "GT"

    goto :goto_f

    .line 272
    :pswitch_43
    const-string v0, "GE"

    goto :goto_f

    .line 273
    :pswitch_46
    const-string v0, "LSH"

    goto :goto_f

    .line 274
    :pswitch_49
    const-string v0, "RSH"

    goto :goto_f

    .line 275
    :pswitch_4c
    const-string v0, "URSH"

    goto :goto_f

    .line 276
    :pswitch_4f
    const-string v0, "ADD"

    goto :goto_f

    .line 277
    :pswitch_52
    const-string v0, "SUB"

    goto :goto_f

    .line 278
    :pswitch_55
    const-string v0, "MUL"

    goto :goto_f

    .line 279
    :pswitch_58
    const-string v0, "DIV"

    goto :goto_f

    .line 280
    :pswitch_5b
    const-string v0, "MOD"

    goto :goto_f

    .line 281
    :pswitch_5e
    const-string v0, "NOT"

    goto :goto_f

    .line 282
    :pswitch_61
    const-string v0, "BITNOT"

    goto :goto_f

    .line 283
    :pswitch_64
    const-string v0, "POS"

    goto :goto_f

    .line 284
    :pswitch_67
    const-string v0, "NEG"

    goto :goto_f

    .line 285
    :pswitch_6a
    const-string v0, "NEW"

    goto :goto_f

    .line 286
    :pswitch_6d
    const-string v0, "DELPROP"

    goto :goto_f

    .line 287
    :pswitch_70
    const-string v0, "TYPEOF"

    goto :goto_f

    .line 288
    :pswitch_73
    const-string v0, "GETPROP"

    goto :goto_f

    .line 289
    :pswitch_76
    const-string v0, "GETPROPNOWARN"

    goto :goto_f

    .line 290
    :pswitch_79
    const-string v0, "SETPROP"

    goto :goto_f

    .line 291
    :pswitch_7c
    const-string v0, "GETELEM"

    goto :goto_f

    .line 292
    :pswitch_7f
    const-string v0, "SETELEM"

    goto :goto_f

    .line 293
    :pswitch_82
    const-string v0, "CALL"

    goto :goto_f

    .line 294
    :pswitch_85
    const-string v0, "NAME"

    goto :goto_f

    .line 295
    :pswitch_88
    const-string v0, "NUMBER"

    goto :goto_f

    .line 296
    :pswitch_8b
    const-string v0, "STRING"

    goto :goto_f

    .line 297
    :pswitch_8e
    const-string v0, "NULL"

    goto/16 :goto_f

    .line 298
    :pswitch_92
    const-string v0, "THIS"

    goto/16 :goto_f

    .line 299
    :pswitch_96
    const-string v0, "FALSE"

    goto/16 :goto_f

    .line 300
    :pswitch_9a
    const-string v0, "TRUE"

    goto/16 :goto_f

    .line 301
    :pswitch_9e
    const-string v0, "SHEQ"

    goto/16 :goto_f

    .line 302
    :pswitch_a2
    const-string v0, "SHNE"

    goto/16 :goto_f

    .line 303
    :pswitch_a6
    const-string v0, "REGEXP"

    goto/16 :goto_f

    .line 304
    :pswitch_aa
    const-string v0, "BINDNAME"

    goto/16 :goto_f

    .line 305
    :pswitch_ae
    const-string v0, "THROW"

    goto/16 :goto_f

    .line 306
    :pswitch_b2
    const-string v0, "RETHROW"

    goto/16 :goto_f

    .line 307
    :pswitch_b6
    const-string v0, "IN"

    goto/16 :goto_f

    .line 308
    :pswitch_ba
    const-string v0, "INSTANCEOF"

    goto/16 :goto_f

    .line 309
    :pswitch_be
    const-string v0, "LOCAL_LOAD"

    goto/16 :goto_f

    .line 310
    :pswitch_c2
    const-string v0, "GETVAR"

    goto/16 :goto_f

    .line 311
    :pswitch_c6
    const-string v0, "SETVAR"

    goto/16 :goto_f

    .line 312
    :pswitch_ca
    const-string v0, "CATCH_SCOPE"

    goto/16 :goto_f

    .line 313
    :pswitch_ce
    const-string v0, "ENUM_INIT_KEYS"

    goto/16 :goto_f

    .line 314
    :pswitch_d2
    const-string v0, "ENUM_INIT_VALUES"

    goto/16 :goto_f

    .line 315
    :pswitch_d6
    const-string v0, "ENUM_INIT_ARRAY"

    goto/16 :goto_f

    .line 316
    :pswitch_da
    const-string v0, "ENUM_NEXT"

    goto/16 :goto_f

    .line 317
    :pswitch_de
    const-string v0, "ENUM_ID"

    goto/16 :goto_f

    .line 318
    :pswitch_e2
    const-string v0, "THISFN"

    goto/16 :goto_f

    .line 319
    :pswitch_e6
    const-string v0, "RETURN_RESULT"

    goto/16 :goto_f

    .line 320
    :pswitch_ea
    const-string v0, "ARRAYLIT"

    goto/16 :goto_f

    .line 321
    :pswitch_ee
    const-string v0, "OBJECTLIT"

    goto/16 :goto_f

    .line 322
    :pswitch_f2
    const-string v0, "GET_REF"

    goto/16 :goto_f

    .line 323
    :pswitch_f6
    const-string v0, "SET_REF"

    goto/16 :goto_f

    .line 324
    :pswitch_fa
    const-string v0, "DEL_REF"

    goto/16 :goto_f

    .line 325
    :pswitch_fe
    const-string v0, "REF_CALL"

    goto/16 :goto_f

    .line 326
    :pswitch_102
    const-string v0, "REF_SPECIAL"

    goto/16 :goto_f

    .line 327
    :pswitch_106
    const-string v0, "DEFAULTNAMESPACE"

    goto/16 :goto_f

    .line 328
    :pswitch_10a
    const-string v0, "ESCXMLTEXT"

    goto/16 :goto_f

    .line 329
    :pswitch_10e
    const-string v0, "ESCXMLATTR"

    goto/16 :goto_f

    .line 330
    :pswitch_112
    const-string v0, "REF_MEMBER"

    goto/16 :goto_f

    .line 331
    :pswitch_116
    const-string v0, "REF_NS_MEMBER"

    goto/16 :goto_f

    .line 332
    :pswitch_11a
    const-string v0, "REF_NAME"

    goto/16 :goto_f

    .line 333
    :pswitch_11e
    const-string v0, "REF_NS_NAME"

    goto/16 :goto_f

    .line 334
    :pswitch_122
    const-string v0, "TRY"

    goto/16 :goto_f

    .line 335
    :pswitch_126
    const-string v0, "SEMI"

    goto/16 :goto_f

    .line 336
    :pswitch_12a
    const-string v0, "LB"

    goto/16 :goto_f

    .line 337
    :pswitch_12e
    const-string v0, "RB"

    goto/16 :goto_f

    .line 338
    :pswitch_132
    const-string v0, "LC"

    goto/16 :goto_f

    .line 339
    :pswitch_136
    const-string v0, "RC"

    goto/16 :goto_f

    .line 340
    :pswitch_13a
    const-string v0, "LP"

    goto/16 :goto_f

    .line 341
    :pswitch_13e
    const-string v0, "RP"

    goto/16 :goto_f

    .line 342
    :pswitch_142
    const-string v0, "COMMA"

    goto/16 :goto_f

    .line 343
    :pswitch_146
    const-string v0, "ASSIGN"

    goto/16 :goto_f

    .line 344
    :pswitch_14a
    const-string v0, "ASSIGN_BITOR"

    goto/16 :goto_f

    .line 345
    :pswitch_14e
    const-string v0, "ASSIGN_BITXOR"

    goto/16 :goto_f

    .line 346
    :pswitch_152
    const-string v0, "ASSIGN_BITAND"

    goto/16 :goto_f

    .line 347
    :pswitch_156
    const-string v0, "ASSIGN_LSH"

    goto/16 :goto_f

    .line 348
    :pswitch_15a
    const-string v0, "ASSIGN_RSH"

    goto/16 :goto_f

    .line 349
    :pswitch_15e
    const-string v0, "ASSIGN_URSH"

    goto/16 :goto_f

    .line 350
    :pswitch_162
    const-string v0, "ASSIGN_ADD"

    goto/16 :goto_f

    .line 351
    :pswitch_166
    const-string v0, "ASSIGN_SUB"

    goto/16 :goto_f

    .line 352
    :pswitch_16a
    const-string v0, "ASSIGN_MUL"

    goto/16 :goto_f

    .line 353
    :pswitch_16e
    const-string v0, "ASSIGN_DIV"

    goto/16 :goto_f

    .line 354
    :pswitch_172
    const-string v0, "ASSIGN_MOD"

    goto/16 :goto_f

    .line 355
    :pswitch_176
    const-string v0, "HOOK"

    goto/16 :goto_f

    .line 356
    :pswitch_17a
    const-string v0, "COLON"

    goto/16 :goto_f

    .line 357
    :pswitch_17e
    const-string v0, "OR"

    goto/16 :goto_f

    .line 358
    :pswitch_182
    const-string v0, "AND"

    goto/16 :goto_f

    .line 359
    :pswitch_186
    const-string v0, "INC"

    goto/16 :goto_f

    .line 360
    :pswitch_18a
    const-string v0, "DEC"

    goto/16 :goto_f

    .line 361
    :pswitch_18e
    const-string v0, "DOT"

    goto/16 :goto_f

    .line 362
    :pswitch_192
    const-string v0, "FUNCTION"

    goto/16 :goto_f

    .line 363
    :pswitch_196
    const-string v0, "EXPORT"

    goto/16 :goto_f

    .line 364
    :pswitch_19a
    const-string v0, "IMPORT"

    goto/16 :goto_f

    .line 365
    :pswitch_19e
    const-string v0, "IF"

    goto/16 :goto_f

    .line 366
    :pswitch_1a2
    const-string v0, "ELSE"

    goto/16 :goto_f

    .line 367
    :pswitch_1a6
    const-string v0, "SWITCH"

    goto/16 :goto_f

    .line 368
    :pswitch_1aa
    const-string v0, "CASE"

    goto/16 :goto_f

    .line 369
    :pswitch_1ae
    const-string v0, "DEFAULT"

    goto/16 :goto_f

    .line 370
    :pswitch_1b2
    const-string v0, "WHILE"

    goto/16 :goto_f

    .line 371
    :pswitch_1b6
    const-string v0, "DO"

    goto/16 :goto_f

    .line 372
    :pswitch_1ba
    const-string v0, "FOR"

    goto/16 :goto_f

    .line 373
    :pswitch_1be
    const-string v0, "BREAK"

    goto/16 :goto_f

    .line 374
    :pswitch_1c2
    const-string v0, "CONTINUE"

    goto/16 :goto_f

    .line 375
    :pswitch_1c6
    const-string v0, "VAR"

    goto/16 :goto_f

    .line 376
    :pswitch_1ca
    const-string v0, "WITH"

    goto/16 :goto_f

    .line 377
    :pswitch_1ce
    const-string v0, "CATCH"

    goto/16 :goto_f

    .line 378
    :pswitch_1d2
    const-string v0, "FINALLY"

    goto/16 :goto_f

    .line 379
    :pswitch_1d6
    const-string v0, "VOID"

    goto/16 :goto_f

    .line 380
    :pswitch_1da
    const-string v0, "RESERVED"

    goto/16 :goto_f

    .line 381
    :pswitch_1de
    const-string v0, "EMPTY"

    goto/16 :goto_f

    .line 382
    :pswitch_1e2
    const-string v0, "BLOCK"

    goto/16 :goto_f

    .line 383
    :pswitch_1e6
    const-string v0, "LABEL"

    goto/16 :goto_f

    .line 384
    :pswitch_1ea
    const-string v0, "TARGET"

    goto/16 :goto_f

    .line 385
    :pswitch_1ee
    const-string v0, "LOOP"

    goto/16 :goto_f

    .line 386
    :pswitch_1f2
    const-string v0, "EXPR_VOID"

    goto/16 :goto_f

    .line 387
    :pswitch_1f6
    const-string v0, "EXPR_RESULT"

    goto/16 :goto_f

    .line 388
    :pswitch_1fa
    const-string v0, "JSR"

    goto/16 :goto_f

    .line 389
    :pswitch_1fe
    const-string v0, "SCRIPT"

    goto/16 :goto_f

    .line 390
    :pswitch_202
    const-string v0, "TYPEOFNAME"

    goto/16 :goto_f

    .line 391
    :pswitch_206
    const-string v0, "USE_STACK"

    goto/16 :goto_f

    .line 392
    :pswitch_20a
    const-string v0, "SETPROP_OP"

    goto/16 :goto_f

    .line 393
    :pswitch_20e
    const-string v0, "SETELEM_OP"

    goto/16 :goto_f

    .line 394
    :pswitch_212
    const-string v0, "LOCAL_BLOCK"

    goto/16 :goto_f

    .line 395
    :pswitch_216
    const-string v0, "SET_REF_OP"

    goto/16 :goto_f

    .line 396
    :pswitch_21a
    const-string v0, "DOTDOT"

    goto/16 :goto_f

    .line 397
    :pswitch_21e
    const-string v0, "COLONCOLON"

    goto/16 :goto_f

    .line 398
    :pswitch_222
    const-string v0, "XML"

    goto/16 :goto_f

    .line 399
    :pswitch_226
    const-string v0, "DOTQUERY"

    goto/16 :goto_f

    .line 400
    :pswitch_22a
    const-string v0, "XMLATTR"

    goto/16 :goto_f

    .line 401
    :pswitch_22e
    const-string v0, "XMLEND"

    goto/16 :goto_f

    .line 402
    :pswitch_232
    const-string v0, "TO_OBJECT"

    goto/16 :goto_f

    .line 403
    :pswitch_236
    const-string v0, "TO_DOUBLE"

    goto/16 :goto_f

    .line 404
    :pswitch_23a
    const-string v0, "GET"

    goto/16 :goto_f

    .line 405
    :pswitch_23e
    const-string v0, "SET"

    goto/16 :goto_f

    .line 406
    :pswitch_242
    const-string v0, "LET"

    goto/16 :goto_f

    .line 407
    :pswitch_246
    const-string v0, "YIELD"

    goto/16 :goto_f

    .line 408
    :pswitch_24a
    const-string v0, "CONST"

    goto/16 :goto_f

    .line 409
    :pswitch_24e
    const-string v0, "SETCONST"

    goto/16 :goto_f

    .line 410
    :pswitch_252
    const-string v0, "ARRAYCOMP"

    goto/16 :goto_f

    .line 411
    :pswitch_256
    const-string v0, "WITHEXPR"

    goto/16 :goto_f

    .line 412
    :pswitch_25a
    const-string v0, "LETEXPR"

    goto/16 :goto_f

    .line 413
    :pswitch_25e
    const-string v0, "DEBUGGER"

    goto/16 :goto_f

    .line 414
    :pswitch_262
    const-string v0, "COMMENT"

    goto/16 :goto_f

    .line 415
    :pswitch_266
    const-string v0, "GENEXPR"

    goto/16 :goto_f

    .line 253
    :pswitch_data_26a
    .packed-switch -0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_85
        :pswitch_88
        :pswitch_8b
        :pswitch_8e
        :pswitch_92
        :pswitch_96
        :pswitch_9a
        :pswitch_9e
        :pswitch_a2
        :pswitch_a6
        :pswitch_aa
        :pswitch_ae
        :pswitch_b2
        :pswitch_b6
        :pswitch_ba
        :pswitch_be
        :pswitch_c2
        :pswitch_c6
        :pswitch_ca
        :pswitch_ce
        :pswitch_d2
        :pswitch_d6
        :pswitch_da
        :pswitch_de
        :pswitch_e2
        :pswitch_e6
        :pswitch_ea
        :pswitch_ee
        :pswitch_f2
        :pswitch_f6
        :pswitch_fa
        :pswitch_fe
        :pswitch_102
        :pswitch_246
        :pswitch_3
        :pswitch_106
        :pswitch_10e
        :pswitch_10a
        :pswitch_112
        :pswitch_116
        :pswitch_11a
        :pswitch_11e
        :pswitch_122
        :pswitch_126
        :pswitch_12a
        :pswitch_12e
        :pswitch_132
        :pswitch_136
        :pswitch_13a
        :pswitch_13e
        :pswitch_142
        :pswitch_146
        :pswitch_14a
        :pswitch_14e
        :pswitch_152
        :pswitch_156
        :pswitch_15a
        :pswitch_15e
        :pswitch_162
        :pswitch_166
        :pswitch_16a
        :pswitch_16e
        :pswitch_172
        :pswitch_176
        :pswitch_17a
        :pswitch_17e
        :pswitch_182
        :pswitch_186
        :pswitch_18a
        :pswitch_18e
        :pswitch_192
        :pswitch_196
        :pswitch_19a
        :pswitch_19e
        :pswitch_1a2
        :pswitch_1a6
        :pswitch_1aa
        :pswitch_1ae
        :pswitch_1b2
        :pswitch_1b6
        :pswitch_1ba
        :pswitch_1be
        :pswitch_1c2
        :pswitch_1c6
        :pswitch_1ca
        :pswitch_1ce
        :pswitch_1d2
        :pswitch_1d6
        :pswitch_1da
        :pswitch_1de
        :pswitch_1e2
        :pswitch_1e6
        :pswitch_1ea
        :pswitch_1ee
        :pswitch_1f2
        :pswitch_1f6
        :pswitch_1fa
        :pswitch_1fe
        :pswitch_202
        :pswitch_206
        :pswitch_20a
        :pswitch_20e
        :pswitch_212
        :pswitch_216
        :pswitch_21a
        :pswitch_21e
        :pswitch_222
        :pswitch_226
        :pswitch_22a
        :pswitch_22e
        :pswitch_232
        :pswitch_236
        :pswitch_23a
        :pswitch_23e
        :pswitch_242
        :pswitch_24a
        :pswitch_24e
        :pswitch_3
        :pswitch_252
        :pswitch_25a
        :pswitch_256
        :pswitch_25e
        :pswitch_262
        :pswitch_266
    .end packed-switch
.end method

.method public static a(Lorg/jshybugger/H;IIZLorg/jshybugger/cM;)Lorg/jshybugger/H;
    .registers 15

    .prologue
    const/4 v6, 0x0

    .line 108
    if-nez p0, :cond_b

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_b
    if-nez p4, :cond_15

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_15
    shl-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, v0, 0x3

    .line 116
    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_59

    const/4 v0, 0x4

    :goto_1e
    add-int v2, v1, v0

    if-eqz p3, :cond_5b

    div-int/lit8 v0, v1, 0x4c

    :goto_24
    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/jshybugger/S;->a(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jshybugger/H;->z()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/H;->a(Ljava/nio/ByteOrder;)Lorg/jshybugger/H;

    move-result-object v3

    .line 122
    add-int/lit8 v9, p2, -0x2

    move v7, v6

    move v4, v6

    move v8, v6

    .line 124
    :goto_36
    if-ge v8, v9, :cond_5d

    .line 125
    add-int v1, v8, p1

    const/4 v2, 0x3

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jshybugger/a;->a(Lorg/jshybugger/H;IILorg/jshybugger/H;ILorg/jshybugger/cM;)V

    .line 127
    add-int/lit8 v0, v7, 0x4

    .line 128
    if-eqz p3, :cond_52

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_52

    .line 129
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    invoke-virtual {v3, v0, v1}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 130
    add-int/lit8 v4, v4, 0x1

    move v0, v6

    .line 124
    :cond_52
    add-int/lit8 v1, v8, 0x3

    add-int/lit8 v4, v4, 0x4

    move v7, v0

    move v8, v1

    goto :goto_36

    :cond_59
    move v0, v6

    .line 116
    goto :goto_1e

    :cond_5b
    move v0, v6

    goto :goto_24

    .line 135
    :cond_5d
    if-ge v8, p2, :cond_6a

    .line 136
    add-int v1, v8, p1

    sub-int v2, p2, v8

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jshybugger/a;->a(Lorg/jshybugger/H;IILorg/jshybugger/H;ILorg/jshybugger/cM;)V

    .line 137
    add-int/lit8 v4, v4, 0x4

    .line 140
    :cond_6a
    invoke-virtual {v3, v6, v4}, Lorg/jshybugger/H;->h(II)Lorg/jshybugger/H;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/jshybugger/f;Ljava/lang/String;I)Lorg/jshybugger/cN;
    .registers 7

    .prologue
    .line 40
    new-instance v1, Lorg/jshybugger/cN;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/jshybugger/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jshybugger/cN;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3c
    const-string v0, ""

    goto :goto_30
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/gW;
    .registers 4

    .prologue
    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/jshybugger/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/gW;
    .registers 5

    .prologue
    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lorg/jshybugger/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/jshybugger/gW;
    .registers 12

    .prologue
    const/16 v9, 0x5c

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 187
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_13

    :cond_a
    move-object v5, v6

    .line 189
    :goto_b
    if-nez p0, :cond_22

    .line 190
    new-instance v0, Lorg/jshybugger/gW;

    invoke-direct {v0, v6, p1, v5}, Lorg/jshybugger/gW;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 245
    :goto_12
    return-object v0

    .line 187
    :cond_13
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_20

    check-cast v0, Ljava/lang/Throwable;

    move-object v5, v0

    goto :goto_b

    :cond_20
    move-object v5, v6

    goto :goto_b

    .line 193
    :cond_22
    if-nez p1, :cond_2a

    .line 194
    new-instance v0, Lorg/jshybugger/gW;

    invoke-direct {v0, p0}, Lorg/jshybugger/gW;-><init>(Ljava/lang/String;)V

    goto :goto_12

    .line 199
    :cond_2a
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v2

    move v1, v2

    .line 202
    :goto_37
    array-length v3, p1

    if-ge v0, v3, :cond_be

    .line 204
    const-string v3, "{}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 206
    const/4 v3, -0x1

    if-ne v8, v3, :cond_60

    .line 208
    if-nez v1, :cond_4b

    .line 209
    new-instance v0, Lorg/jshybugger/gW;

    invoke-direct {v0, p0, p1, v5}, Lorg/jshybugger/gW;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 213
    :cond_4b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    new-instance v0, Lorg/jshybugger/gW;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v5}, Lorg/jshybugger/gW;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 218
    :cond_60
    if-eqz v8, :cond_90

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_90

    move v3, v4

    :goto_6b
    if-eqz v3, :cond_aa

    .line 219
    const/4 v3, 0x2

    if-lt v8, v3, :cond_92

    add-int/lit8 v3, v8, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_92

    move v3, v4

    :goto_79
    if-nez v3, :cond_94

    .line 220
    add-int/lit8 v0, v0, -0x1

    .line 221
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const/16 v1, 0x7b

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    add-int/lit8 v1, v8, 0x1

    .line 202
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_90
    move v3, v2

    .line 218
    goto :goto_6b

    :cond_92
    move v3, v2

    .line 219
    goto :goto_79

    .line 228
    :cond_94
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    aget-object v1, p1, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v1, v3}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 230
    add-int/lit8 v1, v8, 0x2

    goto :goto_8d

    .line 234
    :cond_aa
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    aget-object v1, p1, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v1, v3}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 236
    add-int/lit8 v1, v8, 0x2

    goto :goto_8d

    .line 241
    :cond_be
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_d9

    .line 243
    new-instance v0, Lorg/jshybugger/gW;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v5}, Lorg/jshybugger/gW;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 245
    :cond_d9
    new-instance v0, Lorg/jshybugger/gW;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v6}, Lorg/jshybugger/gW;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_12
.end method

.method public static a(Lorg/jshybugger/de;)Lorg/jshybugger/o;
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lorg/jshybugger/dd;->a:[I

    invoke-virtual {p0}, Lorg/jshybugger/de;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 59
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 47
    :pswitch_11
    sget-object v0, Lorg/jshybugger/n;->a:Lorg/jshybugger/o;

    .line 61
    :goto_13
    return-object v0

    .line 50
    :pswitch_14
    sget-object v0, Lorg/jshybugger/n;->b:Lorg/jshybugger/o;

    goto :goto_13

    .line 53
    :pswitch_17
    sget-object v0, Lorg/jshybugger/n;->c:Lorg/jshybugger/o;

    goto :goto_13

    .line 56
    :pswitch_1a
    sget-object v0, Lorg/jshybugger/n;->d:Lorg/jshybugger/o;

    goto :goto_13

    .line 45
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    if-nez p0, :cond_5

    .line 77
    :cond_4
    return-void

    .line 54
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_3f

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_21

    const/16 v3, 0x20

    if-eq v2, v3, :cond_21

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_21

    const/16 v3, 0x40

    if-ne v2, v3, :cond_22

    :cond_21
    move v0, v1

    :cond_22
    if-nez v0, :cond_4

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "illegal option value \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 69
    :goto_43
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 71
    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "opt contains illegal character value \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-char v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 37
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Reported exception:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<[",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    if-nez p1, :cond_8

    .line 267
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :goto_7
    return-void

    .line 270
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_46

    .line 271
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_7

    :catch_1a
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "[FAILED toString()]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 275
    :cond_46
    instance-of v0, p1, [Z

    if-eqz v0, :cond_50

    .line 276
    check-cast p1, [Z

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[Z)V

    goto :goto_7

    .line 277
    :cond_50
    instance-of v0, p1, [B

    if-eqz v0, :cond_5a

    .line 278
    check-cast p1, [B

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[B)V

    goto :goto_7

    .line 279
    :cond_5a
    instance-of v0, p1, [C

    if-eqz v0, :cond_64

    .line 280
    check-cast p1, [C

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[C)V

    goto :goto_7

    .line 281
    :cond_64
    instance-of v0, p1, [S

    if-eqz v0, :cond_6e

    .line 282
    check-cast p1, [S

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[S)V

    goto :goto_7

    .line 283
    :cond_6e
    instance-of v0, p1, [I

    if-eqz v0, :cond_78

    .line 284
    check-cast p1, [I

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[I)V

    goto :goto_7

    .line 285
    :cond_78
    instance-of v0, p1, [J

    if-eqz v0, :cond_82

    .line 286
    check-cast p1, [J

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[J)V

    goto :goto_7

    .line 287
    :cond_82
    instance-of v0, p1, [F

    if-eqz v0, :cond_8d

    .line 288
    check-cast p1, [F

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[F)V

    goto/16 :goto_7

    .line 289
    :cond_8d
    instance-of v0, p1, [D

    if-eqz v0, :cond_98

    .line 290
    check-cast p1, [D

    invoke-static {p0, p1}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[D)V

    goto/16 :goto_7

    .line 292
    :cond_98
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V

    goto/16 :goto_7
.end method

.method public static a(Ljava/lang/StringBuffer;[B)V
    .registers 5

    .prologue
    .line 343
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    array-length v1, p1

    .line 345
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 346
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 347
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 348
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 351
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 352
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[C)V
    .registers 5

    .prologue
    .line 355
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    array-length v1, p1

    .line 357
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 358
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 360
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 363
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[D)V
    .registers 6

    .prologue
    .line 415
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    array-length v1, p1

    .line 417
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 418
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 419
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 420
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 423
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 424
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[F)V
    .registers 5

    .prologue
    .line 403
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    array-length v1, p1

    .line 405
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 406
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 407
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 408
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 411
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[I)V
    .registers 5

    .prologue
    .line 379
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    array-length v1, p1

    .line 381
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 382
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 383
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 384
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 387
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[J)V
    .registers 6

    .prologue
    .line 391
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    array-length v1, p1

    .line 393
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 394
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 395
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 396
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 399
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 400
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<[",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 314
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    array-length v1, p1

    .line 316
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_24

    .line 317
    aget-object v2, p1, v0

    invoke-static {p0, v2, p2}, Lorg/jshybugger/a;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 318
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_21

    .line 319
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 323
    :cond_24
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :goto_27
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    return-void

    .line 325
    :cond_2d
    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27
.end method

.method public static a(Ljava/lang/StringBuffer;[S)V
    .registers 5

    .prologue
    .line 367
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    array-length v1, p1

    .line 369
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 370
    aget-short v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 371
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 372
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 375
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 376
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[Z)V
    .registers 5

    .prologue
    .line 331
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 332
    array-length v1, p1

    .line 333
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 334
    aget-boolean v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 335
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 336
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 339
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    return-void
.end method

.method public static a(Lorg/jshybugger/H;IILorg/jshybugger/H;ILorg/jshybugger/cM;)V
    .registers 11

    .prologue
    const/16 v4, 0x3d

    const/4 v0, 0x0

    .line 147
    if-nez p5, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v3, p5, Lorg/jshybugger/cM;->b:[B

    .line 160
    if-lez p2, :cond_3a

    invoke-virtual {p0, p1}, Lorg/jshybugger/H;->e(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    :goto_1a
    const/4 v1, 0x1

    if-le p2, v1, :cond_3c

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/jshybugger/H;->e(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    :goto_27
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_35

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/jshybugger/H;->e(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_35
    or-int/2addr v0, v1

    .line 165
    packed-switch p2, :pswitch_data_a6

    .line 185
    :goto_39
    return-void

    :cond_3a
    move v2, v0

    .line 160
    goto :goto_1a

    :cond_3c
    move v1, v0

    goto :goto_27

    .line 167
    :pswitch_3e
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    invoke-virtual {p3, p4, v1}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 168
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    invoke-virtual {p3, v1, v2}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 169
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    invoke-virtual {p3, v1, v2}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 170
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    invoke-virtual {p3, v1, v0}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    goto :goto_39

    .line 173
    :pswitch_65
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    invoke-virtual {p3, p4, v1}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 174
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    invoke-virtual {p3, v1, v2}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 175
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    invoke-virtual {p3, v1, v0}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 176
    add-int/lit8 v0, p4, 0x3

    invoke-virtual {p3, v0, v4}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    goto :goto_39

    .line 179
    :pswitch_88
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    invoke-virtual {p3, p4, v1}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 180
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    invoke-virtual {p3, v1, v0}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 181
    add-int/lit8 v0, p4, 0x2

    invoke-virtual {p3, v0, v4}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    .line 182
    add-int/lit8 v0, p4, 0x3

    invoke-virtual {p3, v0, v4}, Lorg/jshybugger/H;->b(II)Lorg/jshybugger/H;

    goto :goto_39

    .line 165
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_88
        :pswitch_65
        :pswitch_3e
    .end packed-switch
.end method

.method public static a(Lorg/jshybugger/m;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 28
    new-instance v1, Lorg/jshybugger/cN;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/jshybugger/m;->i:Ljava/lang/String;

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jshybugger/cN;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    const-string v0, ""

    goto :goto_30
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_b

    .line 28
    invoke-static {p0, p1, p2}, Lorg/jshybugger/a;->b(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    .line 36
    :goto_a
    return v0

    .line 31
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_16

    .line 32
    invoke-static {p0, p1, p2}, Lorg/jshybugger/a;->c(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_a

    .line 36
    :cond_16
    invoke-static {p0, p1, p2}, Lorg/jshybugger/a;->d(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_a
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 5

    .prologue
    .line 42
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 45
    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_25

    move-result-object v1

    .line 53
    :cond_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 54
    if-lez v2, :cond_14

    .line 55
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 57
    :cond_14
    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 58
    const-string v0, "4.5.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 60
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 46
    :catch_25
    move-exception v0

    .line 47
    new-instance v1, Ljava/io/IOException;

    const-string v2, "MD5 message digest not found"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([B)[B
    .registers 3

    .prologue
    .line 39
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 44
    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "MD5 not supported on this platform - Outdated?"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 71
    invoke-static {p0}, Lorg/jshybugger/a;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 72
    const-string v1, ""

    .line 74
    const/4 v0, 0x0

    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_2f

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 77
    :cond_2f
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    .line 51
    :cond_3
    :goto_3
    return-object p0

    .line 42
    :cond_4
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 46
    :cond_16
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static b(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with <= 3.2 API."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 49
    :try_start_e
    const-string v3, "android.webkit.Network"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 53
    if-nez v3, :cond_1e

    .line 54
    const-string v1, "ProxySettings"

    const-string v2, "failed to get class for android.webkit.Network"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1d
    return v0

    .line 57
    :cond_1e
    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 58
    if-nez v4, :cond_35

    .line 59
    const-string v5, "ProxySettings"

    const-string v6, "failed to get getInstance method"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_35
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_42} :catch_4d

    move-result-object v4

    .line 66
    if-nez v4, :cond_63

    .line 67
    const-string v1, "ProxySettings"

    const-string v2, "error getting network: network is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 62
    :catch_4d
    move-exception v1

    .line 63
    const-string v2, "ProxySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error getting network: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 70
    :cond_63
    :try_start_63
    const-string v5, "mRequestQueue"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 74
    invoke-static {v3, v4}, Lorg/jshybugger/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6c} :catch_77

    move-result-object v3

    .line 79
    if-nez v3, :cond_80

    .line 80
    const-string v1, "ProxySettings"

    const-string v2, "Request queue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 76
    :catch_77
    move-exception v1

    const-string v1, "ProxySettings"

    const-string v2, "error getting field value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 83
    :cond_80
    :try_start_80
    const-string v4, "android.net.http.RequestQueue"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 86
    const-string v5, "mProxyHost"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8b} :catch_a4

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    .line 95
    const/4 v0, 0x1

    :try_start_91
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_97} :catch_ae
    .catchall {:try_start_91 .. :try_end_97} :catchall_ba

    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    :goto_9a
    const-string v0, "ProxySettings"

    const-string v2, "Setting proxy with <= 3.2 API successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 104
    goto/16 :goto_1d

    .line 89
    :catch_a4
    move-exception v1

    const-string v1, "ProxySettings"

    const-string v2, "error getting proxy host field"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 98
    :catch_ae
    move-exception v0

    :try_start_af
    const-string v0, "ProxySettings"

    const-string v2, "error setting proxy host"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_ba

    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_9a

    :catchall_ba
    move-exception v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 52
    instance-of v0, p0, Lorg/jshybugger/fp;

    if-eqz v0, :cond_b

    .line 53
    check-cast p0, Lorg/jshybugger/fp;

    invoke-interface {p0}, Lorg/jshybugger/fp;->v()Z

    move-result v0

    .line 55
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b([B)[B
    .registers 3

    .prologue
    .line 57
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 62
    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "SHA-1 is not supported on this platform - Outdated?"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 69
    :cond_11
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_24
    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 73
    invoke-static {p0}, Lorg/jshybugger/S;->a([B)Lorg/jshybugger/H;

    move-result-object v0

    .line 74
    sget-object v1, Lorg/jshybugger/cM;->a:Lorg/jshybugger/cM;

    if-nez v1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-boolean v2, v1, Lorg/jshybugger/cM;->c:Z

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v0}, Lorg/jshybugger/H;->b()I

    move-result v3

    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v4

    invoke-static {v0, v3, v4, v2, v1}, Lorg/jshybugger/a;->a(Lorg/jshybugger/H;IIZLorg/jshybugger/cM;)Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jshybugger/H;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jshybugger/H;->a(I)Lorg/jshybugger/H;

    .line 75
    sget-object v0, Lorg/jshybugger/fe;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Lorg/jshybugger/H;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v1}, Lorg/jshybugger/H;->v()Z

    .line 77
    return-object v0
.end method

.method public static c(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    :try_start_2
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with 4.0 API."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v2, "android.webkit.JWebCoreJavaBridge"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 114
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 115
    const/4 v4, 0x0

    const-string v5, "android.net.ProxyProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 116
    const-string v4, "updateProxy"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 118
    const-string v3, "android.webkit.WebView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 119
    const-string v4, "mWebViewCore"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 120
    invoke-static {v3, p0}, Lorg/jshybugger/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 122
    const-string v4, "android.webkit.WebViewCore"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 123
    const-string v5, "mBrowserFrame"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 124
    invoke-static {v4, v3}, Lorg/jshybugger/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 126
    const-string v4, "android.webkit.BrowserFrame"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 127
    const-string v5, "sJavaBridge"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 128
    invoke-static {v4, v3}, Lorg/jshybugger/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    const-string v4, "android.net.ProxyProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 131
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 132
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 133
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 134
    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 137
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with 4.0 API successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_92} :catch_93

    .line 145
    :goto_92
    return v0

    .line 142
    :catch_93
    move-exception v0

    .line 144
    const-string v2, "ProxySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to set HTTP proxy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 145
    goto :goto_92
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 90
    :try_start_9
    invoke-static {v0}, Lorg/jshybugger/a;->b(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1

    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw v1
.end method

.method public static d(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with >= 4.1 API."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_9
    const-string v2, "android.webkit.WebViewClassic"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 158
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 159
    const/4 v4, 0x0

    const-string v5, "android.webkit.WebView"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 160
    const-string v4, "fromWebView"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 161
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 163
    const-string v3, "android.webkit.WebViewClassic"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 164
    const-string v4, "mWebViewCore"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 165
    invoke-static {v3, v2}, Lorg/jshybugger/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    const-string v3, "android.webkit.WebViewCore"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 168
    const-string v4, "mBrowserFrame"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 169
    invoke-static {v3, v2}, Lorg/jshybugger/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    const-string v3, "android.webkit.BrowserFrame"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 172
    const-string v4, "sJavaBridge"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 173
    invoke-static {v3, v2}, Lorg/jshybugger/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    const-string v3, "android.net.ProxyProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 176
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 177
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 178
    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 179
    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 182
    const-string v4, "android.webkit.JWebCoreJavaBridge"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 183
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 184
    const/4 v6, 0x0

    const-string v7, "android.net.ProxyProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 185
    const-string v6, "updateProxy"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 187
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_ae} :catch_b6

    .line 193
    const-string v1, "ProxySettings"

    const-string v2, "Setting proxy with >= 4.1 API successful!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_b5
    return v0

    .line 188
    :catch_b6
    move-exception v0

    .line 189
    const-string v2, "ProxySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting proxy with >= 4.1 API failed with error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 190
    goto :goto_b5
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lorg/jshybugger/lZ;

    invoke-direct {v0, p0}, Lorg/jshybugger/lZ;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 43
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SLF4J: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 53
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/jshybugger/a;->a:J

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jshybugger/a;->b:J

    .line 55
    return-void
.end method

.method public final a(J)V
    .registers 8

    .prologue
    const-wide/32 v2, 0xffff

    .line 48
    and-long v0, p1, v2

    iput-wide v0, p0, Lorg/jshybugger/a;->a:J

    .line 49
    const/16 v0, 0x10

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/a;->b:J

    .line 50
    return-void
.end method

.method public final a([BII)V
    .registers 16

    .prologue
    const-wide/32 v10, 0xfff1

    .line 63
    const/4 v0, 0x1

    if-ne p3, v0, :cond_22

    .line 64
    iget-wide v0, p0, Lorg/jshybugger/a;->a:J

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/a;->a:J

    iget-wide v0, p0, Lorg/jshybugger/a;->b:J

    iget-wide v2, p0, Lorg/jshybugger/a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jshybugger/a;->b:J

    .line 65
    iget-wide v0, p0, Lorg/jshybugger/a;->a:J

    rem-long/2addr v0, v10

    iput-wide v0, p0, Lorg/jshybugger/a;->a:J

    .line 66
    iget-wide v0, p0, Lorg/jshybugger/a;->b:J

    rem-long/2addr v0, v10

    iput-wide v0, p0, Lorg/jshybugger/a;->b:J

    .line 89
    :goto_21
    return-void

    .line 70
    :cond_22
    div-int/lit16 v1, p3, 0x15b0

    .line 71
    rem-int/lit16 v0, p3, 0x15b0

    move v2, v1

    move v1, p2

    .line 72
    :goto_28
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_57

    .line 73
    const/16 v2, 0x15b0

    move v3, v1

    move v1, v2

    .line 74
    :goto_30
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_4a

    .line 76
    iget-wide v6, p0, Lorg/jshybugger/a;->a:J

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/jshybugger/a;->a:J

    iget-wide v6, p0, Lorg/jshybugger/a;->b:J

    iget-wide v8, p0, Lorg/jshybugger/a;->a:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/jshybugger/a;->b:J

    move v3, v1

    move v1, v2

    goto :goto_30

    .line 78
    :cond_4a
    iget-wide v6, p0, Lorg/jshybugger/a;->a:J

    rem-long/2addr v6, v10

    iput-wide v6, p0, Lorg/jshybugger/a;->a:J

    .line 79
    iget-wide v6, p0, Lorg/jshybugger/a;->b:J

    rem-long/2addr v6, v10

    iput-wide v6, p0, Lorg/jshybugger/a;->b:J

    move v2, v4

    move v1, v3

    .line 80
    goto :goto_28

    :cond_57
    move v2, v1

    .line 83
    :goto_58
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_72

    .line 85
    iget-wide v4, p0, Lorg/jshybugger/a;->a:J

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/a;->a:J

    iget-wide v2, p0, Lorg/jshybugger/a;->b:J

    iget-wide v4, p0, Lorg/jshybugger/a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jshybugger/a;->b:J

    move v2, v0

    move v0, v1

    goto :goto_58

    .line 87
    :cond_72
    iget-wide v0, p0, Lorg/jshybugger/a;->a:J

    rem-long/2addr v0, v10

    iput-wide v0, p0, Lorg/jshybugger/a;->a:J

    .line 88
    iget-wide v0, p0, Lorg/jshybugger/a;->b:J

    rem-long/2addr v0, v10

    iput-wide v0, p0, Lorg/jshybugger/a;->b:J

    goto :goto_21
.end method

.method public final b()J
    .registers 5

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/jshybugger/a;->b:J

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jshybugger/a;->a:J

    or-long/2addr v0, v2

    return-wide v0
.end method
