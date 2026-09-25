.class Lorg/apache/commons/lang/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private final loadFactor:F

.field private transient table:[Lorg/apache/commons/lang/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 96
    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang/IntHashMap;-><init>(IF)V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 108
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang/IntHashMap;-><init>(IF)V

    .line 109
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-gez p1, :cond_1e

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1e
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3c

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3c
    if-nez p1, :cond_3f

    .line 129
    const/4 p1, 0x1

    .line 132
    :cond_3f
    iput p2, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    .line 133
    new-array v0, p1, [Lorg/apache/commons/lang/IntHashMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 134
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    .line 135
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 4

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 358
    .local v1, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    array-length v0, v1

    .local v0, "index":I
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 359
    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_4

    .line 357
    .end local v0    # "index":I
    .end local v1    # "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    :catchall_c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 361
    .restart local v0    # "index":I
    .restart local v1    # "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_f
    const/4 v2, 0x0

    :try_start_10
    iput v2, p0, Lorg/apache/commons/lang/IntHashMap;->count:I
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_c

    .line 362
    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 175
    if-nez p1, :cond_8

    .line 176
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 179
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 180
    .local v3, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_c
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_23

    .line 181
    aget-object v0, v3, v1

    .local v0, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_12
    if-eqz v0, :cond_21

    .line 182
    iget-object v4, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 183
    const/4 v4, 0x1

    .line 187
    .end local v0    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_1d
    return v4

    .line 181
    .restart local v0    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :cond_1e
    iget-object v0, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_12

    :cond_21
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_c

    .line 187
    .end local v0    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_23
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public containsKey(I)Z
    .registers 8
    .param p1, "key"    # I

    .prologue
    .line 216
    iget-object v3, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 217
    .local v3, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 218
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 219
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_c
    if-eqz v0, :cond_17

    .line 220
    iget v4, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_14

    .line 221
    const/4 v4, 0x1

    .line 224
    :goto_13
    return v4

    .line 219
    :cond_14
    iget-object v0, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_c

    .line 224
    :cond_17
    const/4 v4, 0x0

    goto :goto_13
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/IntHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # I

    .prologue
    .line 237
    iget-object v3, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 238
    .local v3, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 239
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 240
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_c
    if-eqz v0, :cond_18

    .line 241
    iget v4, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_15

    .line 242
    iget-object v4, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 245
    :goto_14
    return-object v4

    .line 240
    :cond_15
    iget-object v0, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_c

    .line 245
    :cond_18
    const/4 v4, 0x0

    goto :goto_14
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7fffffff

    .line 296
    iget-object v4, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 297
    .local v4, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 298
    .local v1, "hash":I
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 299
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_d
    if-eqz v0, :cond_1b

    .line 300
    iget v5, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_18

    .line 301
    iget-object v3, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 302
    .local v3, "old":Ljava/lang/Object;
    iput-object p2, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 319
    .end local v3    # "old":Ljava/lang/Object;
    :goto_17
    return-object v3

    .line 299
    :cond_18
    iget-object v0, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_d

    .line 307
    :cond_1b
    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    iget v6, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    if-lt v5, v6, :cond_2b

    .line 309
    invoke-virtual {p0}, Lorg/apache/commons/lang/IntHashMap;->rehash()V

    .line 311
    iget-object v4, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 312
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 316
    :cond_2b
    new-instance v0, Lorg/apache/commons/lang/IntHashMap$Entry;

    .end local v0    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lorg/apache/commons/lang/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lorg/apache/commons/lang/IntHashMap$Entry;)V

    .line 317
    .restart local v0    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    aput-object v0, v4, v2

    .line 318
    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    .line 319
    const/4 v3, 0x0

    goto :goto_17
.end method

.method protected rehash()V
    .registers 12

    .prologue
    .line 258
    iget-object v9, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    array-length v7, v9

    .line 259
    .local v7, "oldCapacity":I
    iget-object v8, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 261
    .local v8, "oldMap":[Lorg/apache/commons/lang/IntHashMap$Entry;
    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    .line 262
    .local v4, "newCapacity":I
    new-array v5, v4, [Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 264
    .local v5, "newMap":[Lorg/apache/commons/lang/IntHashMap$Entry;
    int-to-float v9, v4

    iget v10, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    .line 265
    iput-object v5, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 267
    move v1, v7

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_16
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_32

    .line 268
    aget-object v6, v8, v1

    .local v6, "old":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_1c
    if-eqz v6, :cond_30

    .line 269
    move-object v0, v6

    .line 270
    .local v0, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    iget-object v6, v6, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 272
    iget v9, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 273
    .local v3, "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 274
    aput-object v0, v5, v3

    goto :goto_1c

    .end local v0    # "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    .end local v3    # "index":I
    :cond_30
    move v2, v1

    .line 275
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_16

    .line 277
    .end local v2    # "i":I
    .end local v6    # "old":Lorg/apache/commons/lang/IntHashMap$Entry;
    .restart local v1    # "i":I
    :cond_32
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 11
    .param p1, "key"    # I

    .prologue
    const/4 v6, 0x0

    .line 334
    iget-object v5, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 335
    .local v5, "tab":[Lorg/apache/commons/lang/IntHashMap$Entry;
    move v1, p1

    .line 336
    .local v1, "hash":I
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    array-length v8, v5

    rem-int v2, v7, v8

    .line 337
    .local v2, "index":I
    aget-object v0, v5, v2

    .local v0, "e":Lorg/apache/commons/lang/IntHashMap$Entry;
    const/4 v4, 0x0

    .local v4, "prev":Lorg/apache/commons/lang/IntHashMap$Entry;
    :goto_e
    if-eqz v0, :cond_2e

    .line 338
    iget v7, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v7, v1, :cond_2a

    .line 339
    if-eqz v4, :cond_25

    .line 340
    iget-object v7, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    iput-object v7, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    .line 344
    :goto_1a
    iget v7, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    .line 345
    iget-object v3, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 346
    .local v3, "oldValue":Ljava/lang/Object;
    iput-object v6, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 350
    .end local v3    # "oldValue":Ljava/lang/Object;
    :goto_24
    return-object v3

    .line 342
    :cond_25
    iget-object v7, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    aput-object v7, v5, v2

    goto :goto_1a

    .line 337
    :cond_2a
    move-object v4, v0

    iget-object v0, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_e

    :cond_2e
    move-object v3, v6

    .line 350
    goto :goto_24
.end method

.method public size()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    return v0
.end method
