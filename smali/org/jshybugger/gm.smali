.class public final Lorg/jshybugger/gM;
.super Lorg/jshybugger/gF;
.source "ConcurrentHashMapV8.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jshybugger/gF",
        "<TK;TV;TK;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jshybugger/gC;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/gC",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 4315
    invoke-direct {p0, p1}, Lorg/jshybugger/gF;-><init>(Lorg/jshybugger/gC;)V

    .line 4316
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/gM;->b:Ljava/lang/Object;

    .line 4317
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 4367
    iget-object v1, p0, Lorg/jshybugger/gM;->b:Ljava/lang/Object;

    if-nez v1, :cond_b

    .line 4368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4369
    :cond_b
    iget-object v2, p0, Lorg/jshybugger/gM;->a:Lorg/jshybugger/gC;

    invoke-virtual {v2, p1, v1, v0}, Lorg/jshybugger/gC;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4384
    const/4 v0, 0x0

    .line 4386
    iget-object v2, p0, Lorg/jshybugger/gM;->b:Ljava/lang/Object;

    if-nez v2, :cond_c

    .line 4387
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4388
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4389
    iget-object v5, p0, Lorg/jshybugger/gM;->a:Lorg/jshybugger/gC;

    invoke-virtual {v5, v4, v2, v1}, Lorg/jshybugger/gC;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    move v0, v1

    .line 4390
    goto :goto_10

    .line 4392
    :cond_24
    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 4332
    iget-object v0, p0, Lorg/jshybugger/gM;->a:Lorg/jshybugger/gC;

    invoke-virtual {v0, p1}, Lorg/jshybugger/gC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 4404
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/util/Set;

    if-eq p1, p0, :cond_14

    invoke-virtual {p0, p1}, Lorg/jshybugger/gM;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 4396
    const/4 v0, 0x0

    .line 4397
    invoke-virtual {p0}, Lorg/jshybugger/gM;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4398
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    .line 4399
    :cond_15
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4350
    iget-object v5, p0, Lorg/jshybugger/gM;->a:Lorg/jshybugger/gC;

    .line 4351
    iget-object v1, v5, Lorg/jshybugger/gC;->a:[Lorg/jshybugger/gO;

    if-nez v1, :cond_f

    move v2, v3

    .line 4352
    :goto_8
    new-instance v0, Lorg/jshybugger/gL;

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/gL;-><init>([Lorg/jshybugger/gO;IIILorg/jshybugger/gC;)V

    return-object v0

    .line 4351
    :cond_f
    array-length v2, v1

    goto :goto_8
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 4343
    iget-object v0, p0, Lorg/jshybugger/gM;->a:Lorg/jshybugger/gC;

    invoke-virtual {v0, p1}, Lorg/jshybugger/gC;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
