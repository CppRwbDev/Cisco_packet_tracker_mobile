.class public abstract Lorg/jshybugger/kY;
.super Lorg/jshybugger/lV;
.source "IdScriptableObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 285
    invoke-direct {p0}, Lorg/jshybugger/lV;-><init>()V

    .line 286
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(II)V
    .registers 6

    .prologue
    .line 558
    const-string v0, "InternalError"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Changing attributes not supported for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jshybugger/kY;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/jshybugger/kY;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/lS;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jshybugger/kQ;

    move-result-object v0

    throw v0
.end method

.method public a(ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 431
    invoke-static {p2}, Lorg/jshybugger/lV;->d(I)V

    .line 432
    invoke-virtual {p0, p1}, Lorg/jshybugger/kY;->a(Ljava/lang/String;)I

    move-result v0

    .line 433
    if-eqz v0, :cond_15

    .line 434
    const v1, 0xffff

    and-int/2addr v1, v0

    .line 435
    ushr-int/lit8 v0, v0, 0x10

    .line 436
    if-eq p2, v0, :cond_14

    .line 437
    invoke-virtual {p0, v1, p2}, Lorg/jshybugger/kY;->a(II)V

    .line 449
    :cond_14
    :goto_14
    return-void

    .line 441
    :cond_15
    invoke-super {p0, p1, p2}, Lorg/jshybugger/lV;->a(Ljava/lang/String;I)V

    goto :goto_14
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 300
    invoke-super {p0, p1, p0, p2}, Lorg/jshybugger/lV;->a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lorg/jshybugger/kY;->a(Ljava/lang/String;)I

    move-result v0

    .line 353
    if-eqz v0, :cond_29

    .line 354
    if-ne p2, p0, :cond_15

    invoke-virtual {p0}, Lorg/jshybugger/kY;->n()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 355
    const-string v0, "msg.modify.sealed"

    invoke-static {v0, p1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 358
    :cond_15
    ushr-int/lit8 v1, v0, 0x10

    .line 359
    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_24

    .line 360
    if-ne p2, p0, :cond_25

    .line 361
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 362
    invoke-virtual {p0, v0, p3}, Lorg/jshybugger/kY;->a(ILjava/lang/Object;)V

    .line 382
    :cond_24
    :goto_24
    return-void

    .line 365
    :cond_25
    invoke-interface {p2, p1, p2, p3}, Lorg/jshybugger/lU;->a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V

    goto :goto_24

    .line 370
    :cond_29
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/lV;->a(Ljava/lang/String;Lorg/jshybugger/lU;Ljava/lang/Object;)V

    goto :goto_24
.end method

.method public final a(Ljava/lang/String;Lorg/jshybugger/lU;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 306
    invoke-virtual {p0, p1}, Lorg/jshybugger/kY;->a(Ljava/lang/String;)I

    move-result v1

    .line 307
    if-eqz v1, :cond_1c

    .line 308
    ushr-int/lit8 v2, v1, 0x10

    .line 309
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    .line 315
    :cond_d
    :goto_d
    return v0

    .line 312
    :cond_e
    const v2, 0xffff

    and-int/2addr v1, v2

    .line 313
    sget-object v2, Lorg/jshybugger/kY;->f:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/jshybugger/kY;->b(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    .line 315
    :cond_1c
    invoke-super {p0, p1, p2}, Lorg/jshybugger/lV;->a(Ljava/lang/String;Lorg/jshybugger/lU;)Z

    move-result v0

    goto :goto_d
.end method

.method a(Z)[Ljava/lang/Object;
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 454
    invoke-super {p0, p1}, Lorg/jshybugger/lV;->a(Z)[Ljava/lang/Object;

    move-result-object v3

    .line 456
    invoke-virtual {p0}, Lorg/jshybugger/kY;->c()I

    move-result v1

    .line 461
    if-eqz v1, :cond_56

    .line 462
    const/4 v0, 0x0

    move v5, v1

    move v1, v4

    .line 465
    :goto_e
    if-eqz v5, :cond_3f

    .line 466
    invoke-virtual {p0, v5}, Lorg/jshybugger/kY;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-virtual {p0, v6}, Lorg/jshybugger/kY;->a(Ljava/lang/String;)I

    move-result v2

    .line 468
    if-eqz v2, :cond_58

    .line 469
    ushr-int/lit8 v2, v2, 0x10

    .line 470
    and-int/lit8 v7, v2, 0x4

    if-nez v7, :cond_28

    .line 471
    sget-object v7, Lorg/jshybugger/kY;->f:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lorg/jshybugger/kY;->b(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_58

    .line 472
    :cond_28
    if-nez p1, :cond_2e

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_58

    .line 476
    :cond_2e
    if-nez v1, :cond_32

    .line 478
    new-array v0, v5, [Ljava/lang/Object;

    .line 480
    :cond_32
    add-int/lit8 v2, v1, 0x1

    aput-object v6, v0, v1

    move-object v1, v0

    move v0, v2

    .line 465
    :goto_38
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_e

    .line 484
    :cond_3f
    if-eqz v1, :cond_56

    .line 485
    array-length v2, v3

    if-nez v2, :cond_48

    array-length v2, v0

    if-ne v2, v1, :cond_48

    .line 496
    :goto_47
    return-object v0

    .line 489
    :cond_48
    array-length v2, v3

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 490
    array-length v5, v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    array-length v3, v3

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 492
    goto :goto_47

    :cond_56
    move-object v0, v3

    goto :goto_47

    :cond_58
    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_38
.end method

.method public b(I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 537
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 295
    invoke-super {p0, p1, p0}, Lorg/jshybugger/lV;->b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Lorg/jshybugger/lV;->b(Ljava/lang/String;Lorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    sget-object v1, Lorg/jshybugger/kY;->f:Ljava/lang/Object;

    if-eq v0, v1, :cond_9

    .line 339
    :cond_8
    :goto_8
    return-object v0

    .line 333
    :cond_9
    invoke-virtual {p0, p1}, Lorg/jshybugger/kY;->a(Ljava/lang/String;)I

    move-result v0

    .line 334
    if-eqz v0, :cond_1b

    .line 335
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 336
    invoke-virtual {p0, v0}, Lorg/jshybugger/kY;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 337
    sget-object v1, Lorg/jshybugger/kY;->f:Ljava/lang/Object;

    if-ne v0, v1, :cond_8

    .line 339
    :cond_1b
    sget-object v0, Lorg/jshybugger/kY;->f:Ljava/lang/Object;

    goto :goto_8
.end method

.method protected c()I
    .registers 2

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lorg/jshybugger/kY;->a(Ljava/lang/String;)I

    move-result v0

    .line 388
    if-eqz v0, :cond_1c

    .line 390
    invoke-virtual {p0}, Lorg/jshybugger/kY;->n()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 391
    ushr-int/lit8 v1, v0, 0x10

    .line 392
    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1b

    .line 393
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 394
    sget-object v1, Lorg/jshybugger/kY;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/kY;->a(ILjava/lang/Object;)V

    .line 409
    :cond_1b
    :goto_1b
    return-void

    .line 399
    :cond_1c
    invoke-super {p0, p1}, Lorg/jshybugger/lV;->c(Ljava/lang/String;)V

    goto :goto_1b
.end method
