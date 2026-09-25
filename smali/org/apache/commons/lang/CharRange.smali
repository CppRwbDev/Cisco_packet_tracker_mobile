.class public final Lorg/apache/commons/lang/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/CharRange$1;,
        Lorg/apache/commons/lang/CharRange$CharacterIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method public constructor <init>(C)V
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    .line 116
    return-void
.end method

.method public constructor <init>(CC)V
    .registers 4
    .param p1, "start"    # C
    .param p2, "end"    # C

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    .line 139
    return-void
.end method

.method public constructor <init>(CCZ)V
    .registers 5
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "negated"    # Z

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    if-le p1, p2, :cond_8

    .line 158
    move v0, p1

    .line 159
    .local v0, "temp":C
    move p1, p2

    .line 160
    move p2, v0

    .line 163
    .end local v0    # "temp":C
    :cond_8
    iput-char p1, p0, Lorg/apache/commons/lang/CharRange;->start:C

    .line 164
    iput-char p2, p0, Lorg/apache/commons/lang/CharRange;->end:C

    .line 165
    iput-boolean p3, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    .line 166
    return-void
.end method

.method public constructor <init>(CZ)V
    .registers 3
    .param p1, "ch"    # C
    .param p2, "negated"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1, p1, p2}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    .line 129
    return-void
.end method

.method static access$100(Lorg/apache/commons/lang/CharRange;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang/CharRange;

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    return v0
.end method

.method static access$200(Lorg/apache/commons/lang/CharRange;)C
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang/CharRange;

    .prologue
    .line 37
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    return v0
.end method

.method static access$300(Lorg/apache/commons/lang/CharRange;)C
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/lang/CharRange;

    .prologue
    .line 37
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    return v0
.end method

.method public static is(C)Lorg/apache/commons/lang/CharRange;
    .registers 3
    .param p0, "ch"    # C

    .prologue
    .line 67
    new-instance v0, Lorg/apache/commons/lang/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isIn(CC)Lorg/apache/commons/lang/CharRange;
    .registers 4
    .param p0, "start"    # C
    .param p1, "end"    # C

    .prologue
    .line 92
    new-instance v0, Lorg/apache/commons/lang/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNot(C)Lorg/apache/commons/lang/CharRange;
    .registers 3
    .param p0, "ch"    # C

    .prologue
    .line 79
    new-instance v0, Lorg/apache/commons/lang/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNotIn(CC)Lorg/apache/commons/lang/CharRange;
    .registers 4
    .param p0, "start"    # C
    .param p1, "end"    # C

    .prologue
    .line 105
    new-instance v0, Lorg/apache/commons/lang/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    return-object v0
.end method


# virtual methods
.method public contains(C)Z
    .registers 6
    .param p1, "ch"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    if-lt p1, v0, :cond_10

    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    if-gt p1, v0, :cond_10

    move v0, v1

    :goto_b
    iget-boolean v3, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eq v0, v3, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_b

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public contains(Lorg/apache/commons/lang/CharRange;)Z
    .registers 6
    .param p1, "range"    # Lorg/apache/commons/lang/CharRange;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    if-nez p1, :cond_c

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Range must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_c
    iget-boolean v2, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eqz v2, :cond_32

    .line 225
    iget-boolean v2, p1, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eqz v2, :cond_23

    .line 226
    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->start:C

    if-lt v2, v3, :cond_21

    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->end:C

    if-gt v2, v3, :cond_21

    .line 233
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 226
    goto :goto_20

    .line 228
    :cond_23
    iget-char v2, p1, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->start:C

    if-lt v2, v3, :cond_2f

    iget-char v2, p1, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->end:C

    if-le v2, v3, :cond_30

    :cond_2f
    move v1, v0

    :cond_30
    move v0, v1

    goto :goto_20

    .line 230
    :cond_32
    iget-boolean v2, p1, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eqz v2, :cond_43

    .line 231
    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->start:C

    if-nez v2, :cond_41

    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->end:C

    const v3, 0xffff

    if-eq v2, v3, :cond_20

    :cond_41
    move v0, v1

    goto :goto_20

    .line 233
    :cond_43
    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->start:C

    if-gt v2, v3, :cond_4f

    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->end:C

    if-ge v2, v3, :cond_20

    :cond_4f
    move v0, v1

    goto :goto_20
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    if-ne p1, p0, :cond_5

    .line 253
    :cond_4
    :goto_4
    return v1

    .line 249
    :cond_5
    instance-of v3, p1, Lorg/apache/commons/lang/CharRange;

    if-nez v3, :cond_b

    move v1, v2

    .line 250
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 252
    check-cast v0, Lorg/apache/commons/lang/CharRange;

    .line 253
    .local v0, "other":Lorg/apache/commons/lang/CharRange;
    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v4, v0, Lorg/apache/commons/lang/CharRange;->start:C

    if-ne v3, v4, :cond_20

    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v4, v0, Lorg/apache/commons/lang/CharRange;->end:C

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    iget-boolean v4, v0, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eq v3, v4, :cond_4

    :cond_20
    move v1, v2

    goto :goto_4
.end method

.method public getEnd()C
    .registers 2

    .prologue
    .line 185
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    return v0
.end method

.method public getStart()C
    .registers 2

    .prologue
    .line 176
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 262
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isNegated()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 296
    new-instance v0, Lorg/apache/commons/lang/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang/CharRange;Lorg/apache/commons/lang/CharRange$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 271
    iget-object v1, p0, Lorg/apache/commons/lang/CharRange;->iToString:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 272
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 273
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    invoke-virtual {p0}, Lorg/apache/commons/lang/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 274
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 276
    :cond_15
    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->start:C

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 277
    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->end:C

    if-eq v1, v2, :cond_2a

    .line 278
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 279
    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->end:C

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 281
    :cond_2a
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/CharRange;->iToString:Ljava/lang/String;

    .line 283
    .end local v0    # "buf":Lorg/apache/commons/lang/text/StrBuilder;
    :cond_30
    iget-object v1, p0, Lorg/apache/commons/lang/CharRange;->iToString:Ljava/lang/String;

    return-object v1
.end method
