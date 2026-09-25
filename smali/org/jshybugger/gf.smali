.class abstract Lorg/jshybugger/gF;
.super Ljava/lang/Object;
.source "ConcurrentHashMapV8.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/jshybugger/gC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/gC",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jshybugger/gC;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/gC",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jshybugger/gF;->a:Lorg/jshybugger/gC;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 4166
    iget-object v0, p0, Lorg/jshybugger/gF;->a:Lorg/jshybugger/gC;

    invoke-virtual {v0}, Lorg/jshybugger/gC;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 4266
    if-eq p1, p0, :cond_1a

    .line 4267
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4268
    if-eqz v1, :cond_18

    invoke-virtual {p0, v1}, Lorg/jshybugger/gF;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4269
    :cond_18
    const/4 v0, 0x0

    .line 4272
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 4168
    iget-object v0, p0, Lorg/jshybugger/gF;->a:Lorg/jshybugger/gC;

    invoke-virtual {v0}, Lorg/jshybugger/gC;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 4276
    const/4 v0, 0x0

    .line 4277
    invoke-virtual {p0}, Lorg/jshybugger/gF;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4279
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4280
    const/4 v0, 0x1

    goto :goto_5

    .line 4283
    :cond_1a
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 4287
    const/4 v0, 0x0

    .line 4288
    invoke-virtual {p0}, Lorg/jshybugger/gF;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4290
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4291
    const/4 v0, 0x1

    goto :goto_5

    .line 4294
    :cond_1a
    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 4167
    iget-object v0, p0, Lorg/jshybugger/gF;->a:Lorg/jshybugger/gC;

    invoke-virtual {v0}, Lorg/jshybugger/gC;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 8

    .prologue
    const v4, 0x7ffffff7

    .line 4187
    iget-object v0, p0, Lorg/jshybugger/gF;->a:Lorg/jshybugger/gC;

    invoke-virtual {v0}, Lorg/jshybugger/gC;->a()J

    move-result-wide v0

    .line 4188
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 4189
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Required array size too large"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4190
    :cond_18
    long-to-int v2, v0

    .line 4191
    new-array v1, v2, [Ljava/lang/Object;

    .line 4192
    const/4 v0, 0x0

    .line 4193
    invoke-virtual {p0}, Lorg/jshybugger/gF;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4194
    if-ne v0, v2, :cond_58

    .line 4195
    if-lt v2, v4, :cond_36

    .line 4196
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Required array size too large"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4197
    :cond_36
    const v3, 0x3ffffffb    # 1.9999994f

    if-lt v2, v3, :cond_4a

    move v2, v4

    .line 4201
    :goto_3c
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    move-object v2, v1

    .line 4203
    :goto_42
    add-int/lit8 v1, v0, 0x1

    aput-object v6, v2, v0

    move v0, v1

    move-object v1, v2

    move v2, v3

    .line 4204
    goto :goto_20

    .line 4200
    :cond_4a
    ushr-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_3c

    .line 4205
    :cond_50
    if-ne v0, v2, :cond_53

    :goto_52
    return-object v1

    :cond_53
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_52

    :cond_58
    move v3, v2

    move-object v2, v1

    goto :goto_42
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const v4, 0x7ffffff7

    .line 4210
    iget-object v0, p0, Lorg/jshybugger/gF;->a:Lorg/jshybugger/gC;

    invoke-virtual {v0}, Lorg/jshybugger/gC;->a()J

    move-result-wide v0

    .line 4211
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 4212
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Required array size too large"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4213
    :cond_18
    long-to-int v0, v0

    .line 4214
    array-length v1, p1

    if-lt v1, v0, :cond_3d

    move-object v0, p1

    .line 4217
    :goto_1d
    array-length v2, v0

    .line 4218
    const/4 v1, 0x0

    .line 4219
    invoke-virtual {p0}, Lorg/jshybugger/gF;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4220
    if-ne v0, v1, :cond_74

    .line 4221
    if-lt v1, v4, :cond_4c

    .line 4222
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Required array size too large"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4214
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1d

    .line 4223
    :cond_4c
    const v3, 0x3ffffffb    # 1.9999994f

    if-lt v1, v3, :cond_5f

    move v1, v4

    .line 4227
    :goto_52
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move v2, v1

    .line 4229
    :goto_57
    add-int/lit8 v1, v0, 0x1

    aput-object v6, v3, v0

    move v0, v1

    move v1, v2

    move-object v2, v3

    .line 4230
    goto :goto_27

    .line 4226
    :cond_5f
    ushr-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_52

    .line 4231
    :cond_65
    if-ne p1, v2, :cond_6d

    if-ge v0, v1, :cond_6d

    .line 4232
    const/4 v1, 0x0

    aput-object v1, v2, v0

    .line 4235
    :cond_6c
    :goto_6c
    return-object v2

    :cond_6d
    if-eq v0, v1, :cond_6c

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_6c

    :cond_74
    move-object v3, v2

    move v2, v1

    goto :goto_57
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4251
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4252
    invoke-virtual {p0}, Lorg/jshybugger/gF;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4253
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4255
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4256
    if-ne v0, p0, :cond_1c

    const-string v0, "(this Collection)"

    :cond_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4257
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4258
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 4262
    :cond_31
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
