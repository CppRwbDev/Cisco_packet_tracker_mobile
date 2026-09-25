.class public Lorg/jshybugger/e;
.super Ljava/lang/Object;
.source "Deflate.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lorg/jshybugger/e;->a:I

    .line 56
    iput p2, p0, Lorg/jshybugger/e;->b:I

    .line 57
    iput p3, p0, Lorg/jshybugger/e;->c:I

    .line 58
    iput p4, p0, Lorg/jshybugger/e;->d:I

    .line 59
    iput p5, p0, Lorg/jshybugger/e;->e:I

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/jshybugger/nU;
    .registers 12

    .prologue
    const/16 v9, 0x5c

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_13

    :cond_a
    move-object v5, v6

    .line 184
    :goto_b
    if-nez p0, :cond_22

    .line 185
    new-instance v0, Lorg/jshybugger/nU;

    invoke-direct {v0, v6, p1, v5}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 240
    :goto_12
    return-object v0

    .line 182
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

    .line 188
    :cond_22
    if-nez p1, :cond_2a

    .line 189
    new-instance v0, Lorg/jshybugger/nU;

    invoke-direct {v0, p0}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;)V

    goto :goto_12

    .line 194
    :cond_2a
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v2

    move v1, v2

    .line 197
    :goto_37
    array-length v3, p1

    if-ge v0, v3, :cond_be

    .line 199
    const-string v3, "{}"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 201
    const/4 v3, -0x1

    if-ne v8, v3, :cond_60

    .line 203
    if-nez v1, :cond_4b

    .line 204
    new-instance v0, Lorg/jshybugger/nU;

    invoke-direct {v0, p0, p1, v5}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 208
    :cond_4b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v0, Lorg/jshybugger/nU;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v5}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 213
    :cond_60
    if-eqz v8, :cond_90

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_90

    move v3, v4

    :goto_6b
    if-eqz v3, :cond_aa

    .line 214
    const/4 v3, 0x2

    if-lt v8, v3, :cond_92

    add-int/lit8 v3, v8, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_92

    move v3, v4

    :goto_79
    if-nez v3, :cond_94

    .line 215
    add-int/lit8 v0, v0, -0x1

    .line 216
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const/16 v1, 0x7b

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v1, v8, 0x1

    .line 197
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_90
    move v3, v2

    .line 213
    goto :goto_6b

    :cond_92
    move v3, v2

    .line 214
    goto :goto_79

    .line 223
    :cond_94
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    aget-object v1, p1, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v1, v3}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 225
    add-int/lit8 v1, v8, 0x2

    goto :goto_8d

    .line 229
    :cond_aa
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    aget-object v1, p1, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v1, v3}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 231
    add-int/lit8 v1, v8, 0x2

    goto :goto_8d

    .line 236
    :cond_be
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_d9

    .line 238
    new-instance v0, Lorg/jshybugger/nU;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v5}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 240
    :cond_d9
    new-instance v0, Lorg/jshybugger/nU;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v6}, Lorg/jshybugger/nU;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_12
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 7

    .prologue
    .line 271
    if-nez p1, :cond_8

    .line 272
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :goto_7
    return-void

    .line 275
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_46

    .line 276
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

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "[FAILED toString()]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 280
    :cond_46
    instance-of v0, p1, [Z

    if-eqz v0, :cond_50

    .line 281
    check-cast p1, [Z

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[Z)V

    goto :goto_7

    .line 282
    :cond_50
    instance-of v0, p1, [B

    if-eqz v0, :cond_5a

    .line 283
    check-cast p1, [B

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[B)V

    goto :goto_7

    .line 284
    :cond_5a
    instance-of v0, p1, [C

    if-eqz v0, :cond_64

    .line 285
    check-cast p1, [C

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[C)V

    goto :goto_7

    .line 286
    :cond_64
    instance-of v0, p1, [S

    if-eqz v0, :cond_6e

    .line 287
    check-cast p1, [S

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[S)V

    goto :goto_7

    .line 288
    :cond_6e
    instance-of v0, p1, [I

    if-eqz v0, :cond_78

    .line 289
    check-cast p1, [I

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[I)V

    goto :goto_7

    .line 290
    :cond_78
    instance-of v0, p1, [J

    if-eqz v0, :cond_82

    .line 291
    check-cast p1, [J

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[J)V

    goto :goto_7

    .line 292
    :cond_82
    instance-of v0, p1, [F

    if-eqz v0, :cond_8d

    .line 293
    check-cast p1, [F

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[F)V

    goto/16 :goto_7

    .line 294
    :cond_8d
    instance-of v0, p1, [D

    if-eqz v0, :cond_98

    .line 295
    check-cast p1, [D

    invoke-static {p0, p1}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[D)V

    goto/16 :goto_7

    .line 297
    :cond_98
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V

    goto/16 :goto_7
.end method

.method public static a(Ljava/lang/StringBuffer;[B)V
    .registers 5

    .prologue
    .line 347
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    array-length v1, p1

    .line 349
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 350
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 352
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 354
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[C)V
    .registers 5

    .prologue
    .line 358
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    array-length v1, p1

    .line 360
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 361
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 363
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 365
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[D)V
    .registers 6

    .prologue
    .line 413
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    array-length v1, p1

    .line 415
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 416
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 417
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 418
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 420
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[F)V
    .registers 5

    .prologue
    .line 402
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    array-length v1, p1

    .line 404
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 405
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 406
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 407
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 409
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[I)V
    .registers 5

    .prologue
    .line 380
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    array-length v1, p1

    .line 382
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 383
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 384
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 385
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
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

    .line 398
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6

    .prologue
    .line 318
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 320
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    array-length v1, p1

    .line 322
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_24

    .line 323
    aget-object v2, p1, v0

    invoke-static {p0, v2, p2}, Lorg/jshybugger/e;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    .line 324
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_21

    .line 325
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 328
    :cond_24
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :goto_27
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    return-void

    .line 330
    :cond_2d
    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27
.end method

.method public static a(Ljava/lang/StringBuffer;[S)V
    .registers 5

    .prologue
    .line 369
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    array-length v1, p1

    .line 371
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 372
    aget-short v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 374
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 376
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;[Z)V
    .registers 5

    .prologue
    .line 336
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 337
    array-length v1, p1

    .line 338
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 339
    aget-boolean v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 340
    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_17

    .line 341
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 343
    :cond_1a
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    return-void
.end method
