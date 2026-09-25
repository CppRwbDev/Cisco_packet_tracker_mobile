.class public Lorg/jshybugger/dj;
.super Lorg/jshybugger/dJ;
.source "DefaultHttpHeaders.java"


# instance fields
.field private final b:[Lorg/jshybugger/dk;

.field private final c:Lorg/jshybugger/dk;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lorg/jshybugger/dJ;-><init>()V

    .line 81
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/jshybugger/dk;

    iput-object v0, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    .line 82
    new-instance v0, Lorg/jshybugger/dk;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/jshybugger/dk;-><init>(Lorg/jshybugger/dj;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    .line 85
    iget-object v0, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iget-object v1, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iget-object v2, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iput-object v2, v1, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    iput-object v2, v0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    .line 86
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 326
    if-nez p0, :cond_4

    .line 327
    const/4 p0, 0x0

    .line 341
    :goto_3
    return-object p0

    .line 329
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 330
    check-cast p0, Ljava/lang/String;

    goto :goto_3

    .line 332
    :cond_b
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_14

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 335
    :cond_14
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_23

    .line 336
    invoke-static {}, Lorg/jshybugger/dF;->a()Lorg/jshybugger/dF;

    move-result-object v0

    check-cast p0, Ljava/util/Date;

    invoke-virtual {v0, p0}, Lorg/jshybugger/dF;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 338
    :cond_23
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_36

    .line 339
    invoke-static {}, Lorg/jshybugger/dF;->a()Lorg/jshybugger/dF;

    move-result-object v0

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/dF;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 341
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method static synthetic a(Lorg/jshybugger/dj;)Lorg/jshybugger/dk;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .registers 7

    .prologue
    .line 139
    iget-object v0, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    aget-object v0, v0, p2

    .line 140
    if-nez v0, :cond_7

    .line 172
    :cond_6
    :goto_6
    return-void

    .line 145
    :cond_7
    :goto_7
    iget v1, v0, Lorg/jshybugger/dk;->a:I

    if-ne v1, p1, :cond_25

    iget-object v1, v0, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    invoke-static {p3, v1}, Lorg/jshybugger/dj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 146
    invoke-virtual {v0}, Lorg/jshybugger/dk;->a()V

    .line 147
    iget-object v0, v0, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    .line 148
    if-eqz v0, :cond_1f

    .line 149
    iget-object v1, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    aput-object v0, v1, p2

    goto :goto_7

    .line 152
    :cond_1f
    iget-object v0, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    goto :goto_6

    .line 155
    :cond_25
    :goto_25
    iget-object v1, v0, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    .line 162
    if-eqz v1, :cond_6

    .line 163
    iget v2, v1, Lorg/jshybugger/dk;->a:I

    if-ne v2, p1, :cond_3d

    iget-object v2, v1, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    invoke-static {p3, v2}, Lorg/jshybugger/dj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 166
    iget-object v2, v1, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    iput-object v2, v0, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    .line 167
    invoke-virtual {v1}, Lorg/jshybugger/dk;->a()V

    goto :goto_25

    :cond_3d
    move-object v0, v1

    .line 171
    goto :goto_25
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 118
    iget-object v0, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    aget-object v0, v0, p2

    .line 120
    iget-object v1, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    new-instance v2, Lorg/jshybugger/dk;

    invoke-direct {v2, p0, p1, p3, p4}, Lorg/jshybugger/dk;-><init>(Lorg/jshybugger/dj;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, p2

    .line 121
    iput-object v0, v2, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    .line 124
    iget-object v0, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    invoke-virtual {v2, v0}, Lorg/jshybugger/dk;->a(Lorg/jshybugger/dk;)V

    .line 125
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_10

    .line 74
    :cond_f
    :goto_f
    return v0

    .line 59
    :cond_10
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_13
    if-ltz v3, :cond_33

    .line 60
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 61
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 62
    if-eq v2, v1, :cond_2f

    .line 63
    if-lt v2, v4, :cond_26

    if-gt v2, v5, :cond_26

    .line 64
    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 66
    :cond_26
    if-lt v1, v4, :cond_2d

    if-gt v1, v5, :cond_2d

    .line 67
    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    .line 69
    :cond_2d
    if-ne v2, v1, :cond_f

    .line 59
    :cond_2f
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_13

    .line 74
    :cond_33
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static g(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_8
    if-ltz v2, :cond_20

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 38
    const/16 v3, 0x41

    if-lt v0, v3, :cond_19

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_19

    .line 39
    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    .line 41
    :cond_19
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    .line 36
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_8

    .line 44
    :cond_20
    if-lez v1, :cond_24

    move v0, v1

    .line 49
    :goto_23
    return v0

    .line 46
    :cond_24
    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_2c

    .line 47
    const v0, 0x7fffffff

    goto :goto_23

    .line 49
    :cond_2c
    neg-int v0, v1

    goto :goto_23
.end method


# virtual methods
.method public final a()Lorg/jshybugger/dJ;
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iget-object v1, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iget-object v2, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iput-object v2, v1, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    iput-object v2, v0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    .line 214
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jshybugger/dJ;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lorg/jshybugger/dJ;"
        }
    .end annotation

    .prologue
    .line 188
    if-nez p2, :cond_a

    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_a
    invoke-virtual {p0, p1}, Lorg/jshybugger/dj;->a(Ljava/lang/String;)V

    .line 194
    invoke-static {p1}, Lorg/jshybugger/dj;->g(Ljava/lang/String;)I

    move-result v0

    .line 195
    rem-int/lit8 v1, v0, 0x11

    .line 197
    invoke-direct {p0, v0, v1, p1}, Lorg/jshybugger/dj;->a(IILjava/lang/String;)V

    .line 198
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_31

    .line 200
    invoke-static {v3}, Lorg/jshybugger/dj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v3}, Lorg/jshybugger/dj;->f(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v0, v1, p1, v3}, Lorg/jshybugger/dj;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 207
    :cond_31
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;
    .registers 6

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/jshybugger/dj;->a(Ljava/lang/String;)V

    .line 95
    invoke-static {p2}, Lorg/jshybugger/dj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lorg/jshybugger/dj;->f(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lorg/jshybugger/dj;->g(Ljava/lang/String;)I

    move-result v1

    .line 98
    rem-int/lit8 v2, v1, 0x11

    .line 99
    invoke-direct {p0, v1, v2, p1, v0}, Lorg/jshybugger/dj;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object p0
.end method

.method a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 89
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header names cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_49

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header name cannot contain non-ASCII characters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    sparse-switch v1, :sswitch_data_4a

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :sswitch_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_49
    return-void

    .line 89
    :sswitch_data_4a
    .sparse-switch
        0x9 -> :sswitch_34
        0xa -> :sswitch_34
        0xb -> :sswitch_34
        0xc -> :sswitch_34
        0xd -> :sswitch_34
        0x20 -> :sswitch_34
        0x2c -> :sswitch_34
        0x3a -> :sswitch_34
        0x3b -> :sswitch_34
        0x3d -> :sswitch_34
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    .line 288
    if-nez p1, :cond_a

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_a
    invoke-static {p1}, Lorg/jshybugger/dj;->g(Ljava/lang/String;)I

    move-result v1

    .line 293
    rem-int/lit8 v0, v1, 0x11

    .line 294
    iget-object v2, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    aget-object v0, v2, v0

    .line 295
    :goto_14
    if-eqz v0, :cond_2f

    .line 296
    iget v2, v0, Lorg/jshybugger/dk;->a:I

    if-ne v2, v1, :cond_2c

    iget-object v2, v0, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/jshybugger/dj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 297
    iget-object v2, v0, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 299
    const/4 v0, 0x1

    .line 309
    :goto_2b
    return v0

    .line 302
    :cond_2c
    iget-object v0, v0, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    goto :goto_14

    .line 309
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public final b(Ljava/lang/String;)Lorg/jshybugger/dJ;
    .registers 4

    .prologue
    .line 129
    if-nez p1, :cond_a

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_a
    invoke-static {p1}, Lorg/jshybugger/dj;->g(Ljava/lang/String;)I

    move-result v0

    .line 133
    rem-int/lit8 v1, v0, 0x11

    .line 134
    invoke-direct {p0, v0, v1, p1}, Lorg/jshybugger/dj;->a(IILjava/lang/String;)V

    .line 135
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;
    .registers 6

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lorg/jshybugger/dj;->a(Ljava/lang/String;)V

    .line 177
    invoke-static {p2}, Lorg/jshybugger/dj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lorg/jshybugger/dj;->f(Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lorg/jshybugger/dj;->g(Ljava/lang/String;)I

    move-result v1

    .line 180
    rem-int/lit8 v2, v1, 0x11

    .line 181
    invoke-direct {p0, v1, v2, p1}, Lorg/jshybugger/dj;->a(IILjava/lang/String;)V

    .line 182
    invoke-direct {p0, v1, v2, p1, v0}, Lorg/jshybugger/dj;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-object p0
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iget-object v1, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iget-object v1, v1, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 219
    if-nez p1, :cond_a

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_a
    invoke-static {p1}, Lorg/jshybugger/dj;->g(Ljava/lang/String;)I

    move-result v2

    .line 224
    rem-int/lit8 v0, v2, 0x11

    .line 225
    iget-object v1, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    aget-object v1, v1, v0

    .line 226
    const/4 v0, 0x0

    .line 228
    :goto_15
    if-eqz v1, :cond_28

    .line 229
    iget v3, v1, Lorg/jshybugger/dk;->a:I

    if-ne v3, v2, :cond_25

    iget-object v3, v1, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jshybugger/dj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 230
    iget-object v0, v1, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    .line 233
    :cond_25
    iget-object v1, v1, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    goto :goto_15

    .line 235
    :cond_28
    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 317
    iget-object v0, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    iget-object v0, v0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    .line 318
    :goto_b
    iget-object v2, p0, Lorg/jshybugger/dj;->c:Lorg/jshybugger/dk;

    if-eq v0, v2, :cond_17

    .line 319
    iget-object v2, v0, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, v0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    goto :goto_b

    .line 322
    :cond_17
    return-object v1
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    if-nez p1, :cond_a

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_a
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 246
    invoke-static {p1}, Lorg/jshybugger/dj;->g(Ljava/lang/String;)I

    move-result v2

    .line 247
    rem-int/lit8 v0, v2, 0x11

    .line 248
    iget-object v3, p0, Lorg/jshybugger/dj;->b:[Lorg/jshybugger/dk;

    aget-object v0, v3, v0

    .line 249
    :goto_19
    if-eqz v0, :cond_2f

    .line 250
    iget v3, v0, Lorg/jshybugger/dk;->a:I

    if-ne v3, v2, :cond_2c

    iget-object v3, v0, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jshybugger/dj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 251
    iget-object v3, v0, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 253
    :cond_2c
    iget-object v0, v0, Lorg/jshybugger/dk;->d:Lorg/jshybugger/dk;

    goto :goto_19

    .line 255
    :cond_2f
    return-object v1
.end method

.method public final e(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lorg/jshybugger/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lorg/jshybugger/dl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/dl;-><init>(Lorg/jshybugger/dj;B)V

    return-object v0
.end method
