.class public final Lorg/jshybugger/ef;
.super Ljava/lang/Object;
.source "QueryStringDecoder.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/nio/charset/Charset;

.field private final e:I

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 73
    sget-object v0, Lorg/jshybugger/dv;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ef;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/ef;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 6

    .prologue
    .line 97
    const/4 v0, 0x1

    const/16 v1, 0x400

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jshybugger/ef;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V

    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V
    .registers 7

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-nez p1, :cond_d

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_d
    if-nez p2, :cond_17

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_17
    iput-object p1, p0, Lorg/jshybugger/ef;->a:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lorg/jshybugger/ef;->d:Ljava/nio/charset/Charset;

    .line 118
    const/16 v0, 0x400

    iput v0, p0, Lorg/jshybugger/ef;->e:I

    .line 119
    iput-boolean p3, p0, Lorg/jshybugger/ef;->b:Z

    .line 120
    return-void
.end method

.method private static a(C)C
    .registers 2

    .prologue
    .line 374
    const/16 v0, 0x30

    if-gt v0, p0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 375
    add-int/lit8 v0, p0, -0x30

    int-to-char v0, v0

    .line 381
    :goto_b
    return v0

    .line 376
    :cond_c
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1a

    .line 377
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    goto :goto_b

    .line 378
    :cond_1a
    const/16 v0, 0x41

    if-gt v0, p0, :cond_28

    const/16 v0, 0x46

    if-gt p0, v0, :cond_28

    .line 379
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    goto :goto_b

    .line 381
    :cond_28
    const v0, 0xffff

    goto :goto_b
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11

    .prologue
    const v8, 0xffff

    const/16 v7, 0x25

    const/4 v4, 0x0

    .line 307
    if-nez p0, :cond_b

    .line 308
    const-string p0, ""

    .line 363
    :cond_a
    :goto_a
    return-object p0

    .line 310
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v4

    move v1, v4

    .line 312
    :goto_11
    if-ge v0, v5, :cond_21

    .line 313
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 314
    sparse-switch v2, :sswitch_data_d8

    .line 312
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 316
    :sswitch_1d
    add-int/lit8 v0, v0, 0x1

    .line 319
    :sswitch_1f
    const/4 v1, 0x1

    goto :goto_1a

    .line 323
    :cond_21
    if-eqz v1, :cond_a

    .line 326
    new-array v6, v5, [B

    move v3, v4

    move v1, v4

    .line 328
    :goto_27
    if-ge v1, v5, :cond_d1

    .line 329
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 330
    sparse-switch v0, :sswitch_data_e2

    .line 359
    :goto_30
    add-int/lit8 v2, v3, 0x1

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    move v0, v2

    .line 328
    :goto_36
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_27

    .line 332
    :sswitch_3a
    add-int/lit8 v0, v3, 0x1

    const/16 v2, 0x20

    aput-byte v2, v6, v3

    goto :goto_36

    .line 335
    :sswitch_41
    add-int/lit8 v0, v5, -0x1

    if-ne v1, v0, :cond_5a

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unterminated escape sequence at end of string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 340
    if-ne v0, v7, :cond_67

    .line 341
    add-int/lit8 v0, v3, 0x1

    aput-byte v7, v6, v3

    goto :goto_36

    .line 344
    :cond_67
    add-int/lit8 v2, v5, -0x1

    if-ne v1, v2, :cond_80

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "partial escape sequence at end of string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_80
    invoke-static {v0}, Lorg/jshybugger/ef;->a(C)C

    move-result v0

    .line 349
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jshybugger/ef;->a(C)C

    move-result v2

    .line 350
    if-eq v0, v8, :cond_92

    if-ne v2, v8, :cond_cb

    .line 351
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid escape sequence `%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_cb
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    int-to-char v0, v0

    goto/16 :goto_30

    .line 363
    :cond_d1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6, v4, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto/16 :goto_a

    .line 314
    :sswitch_data_d8
    .sparse-switch
        0x25 -> :sswitch_1d
        0x2b -> :sswitch_1f
    .end sparse-switch

    .line 330
    :sswitch_data_e2
    .sparse-switch
        0x25 -> :sswitch_41
        0x2b -> :sswitch_3a
    .end sparse-switch
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 253
    iget v0, p0, Lorg/jshybugger/ef;->g:I

    iget v2, p0, Lorg/jshybugger/ef;->e:I

    if-lt v0, v2, :cond_9

    .line 254
    const/4 v0, 0x0

    .line 264
    :goto_8
    return v0

    .line 257
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 258
    if-nez v0, :cond_19

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_19
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget v0, p0, Lorg/jshybugger/ef;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jshybugger/ef;->g:I

    move v0, v1

    .line 264
    goto :goto_8
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jshybugger/ef;->f:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 173
    iget-boolean v0, p0, Lorg/jshybugger/ef;->b:Z

    if-nez v0, :cond_d

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lorg/jshybugger/ef;->f:Ljava/lang/String;

    .line 184
    :goto_c
    return-object v0

    .line 177
    :cond_d
    iget-object v0, p0, Lorg/jshybugger/ef;->a:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 178
    if-gez v0, :cond_1e

    .line 179
    iget-object v0, p0, Lorg/jshybugger/ef;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/jshybugger/ef;->f:Ljava/lang/String;

    .line 184
    :cond_1b
    iget-object v0, p0, Lorg/jshybugger/ef;->f:Ljava/lang/String;

    goto :goto_c

    .line 181
    :cond_1e
    iget-object v1, p0, Lorg/jshybugger/ef;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/ef;->f:Ljava/lang/String;

    goto :goto_c
.end method

.method public a(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 209
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lorg/jshybugger/ef;->c:Ljava/util/Map;

    .line 210
    iput v0, p0, Lorg/jshybugger/ef;->g:I

    move v2, v0

    move v1, v0

    move-object v0, v3

    .line 215
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6a

    .line 216
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 217
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_35

    if-nez v0, :cond_35

    .line 218
    if-eq v1, v2, :cond_2a

    .line 219
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/ef;->d:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jshybugger/ef;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_2a
    add-int/lit8 v1, v2, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 215
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_e

    .line 223
    :cond_35
    const/16 v6, 0x26

    if-eq v5, v6, :cond_3d

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_96

    .line 224
    :cond_3d
    if-nez v0, :cond_54

    if-eq v1, v2, :cond_54

    .line 228
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/jshybugger/ef;->d:Ljava/nio/charset/Charset;

    invoke-static {v1, v5}, Lorg/jshybugger/ef;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-direct {p0, v4, v1, v5}, Lorg/jshybugger/ef;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 250
    :cond_53
    :goto_53
    return-void

    .line 231
    :cond_54
    if-eqz v0, :cond_94

    .line 232
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/jshybugger/ef;->d:Ljava/nio/charset/Charset;

    invoke-static {v1, v5}, Lorg/jshybugger/ef;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lorg/jshybugger/ef;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    move-object v1, v3

    .line 237
    :goto_67
    add-int/lit8 v0, v2, 0x1

    goto :goto_2f

    .line 241
    :cond_6a
    if-eq v1, v2, :cond_8c

    .line 242
    if-nez v0, :cond_7e

    .line 243
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/ef;->d:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jshybugger/ef;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v4, v0, v1}, Lorg/jshybugger/ef;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    .line 245
    :cond_7e
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/ef;->d:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lorg/jshybugger/ef;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lorg/jshybugger/ef;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    .line 247
    :cond_8c
    if-eqz v0, :cond_53

    .line 248
    const-string v1, ""

    invoke-direct {p0, v4, v0, v1}, Lorg/jshybugger/ef;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    :cond_94
    move-object v1, v0

    goto :goto_67

    :cond_96
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_2f
.end method
