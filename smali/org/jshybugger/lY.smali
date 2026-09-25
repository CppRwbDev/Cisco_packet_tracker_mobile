.class public Lorg/jshybugger/ly;
.super Lorg/jshybugger/kY;
.source "NativeObject.java"

# interfaces
.implements Ljava/util/Map;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "Object"

    sput-object v0, Lorg/jshybugger/ly;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/jshybugger/kY;-><init>()V

    .line 587
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "Object"

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 426
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 427
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lorg/jshybugger/ly;->a(Ljava/lang/String;Lorg/jshybugger/lU;)Z

    move-result v0

    .line 431
    :goto_a
    return v0

    .line 428
    :cond_b
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1a

    .line 429
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p0}, Lorg/jshybugger/ly;->b(ILorg/jshybugger/lU;)Z

    move-result v0

    goto :goto_a

    .line 431
    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/jshybugger/ly;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 436
    if-eq p1, v1, :cond_1c

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 438
    :cond_1c
    const/4 v0, 0x1

    .line 441
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Lorg/jshybugger/lz;

    invoke-direct {v0, p0}, Lorg/jshybugger/lz;-><init>(Lorg/jshybugger/ly;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lorg/jshybugger/lC;

    invoke-direct {v0, p0}, Lorg/jshybugger/lC;-><init>(Lorg/jshybugger/ly;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 468
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lorg/jshybugger/ly;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 446
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 447
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/jshybugger/ly;->c(Ljava/lang/String;)V

    .line 451
    :cond_d
    :goto_d
    return-object v0

    .line 448
    :cond_e
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_d

    .line 449
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jshybugger/ly;->c(I)V

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lorg/jshybugger/lS;->a(Lorg/jshybugger/lU;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Lorg/jshybugger/lE;

    invoke-direct {v0, p0}, Lorg/jshybugger/lE;-><init>(Lorg/jshybugger/ly;)V

    return-object v0
.end method
