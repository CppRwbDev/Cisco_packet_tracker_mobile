.class public abstract Lorg/jshybugger/fl;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/jshybugger/fo",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/jshybugger/fm;

    invoke-direct {v0, p0}, Lorg/jshybugger/fm;-><init>(Lorg/jshybugger/fl;)V

    iput-object v0, p0, Lorg/jshybugger/fl;->a:Ljava/lang/ThreadLocal;

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lorg/jshybugger/fl;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/fo;

    .line 38
    iget v2, v0, Lorg/jshybugger/fo;->d:I

    if-nez v2, :cond_14

    .line 39
    :goto_d
    if-nez v1, :cond_27

    .line 40
    invoke-virtual {p0, v0}, Lorg/jshybugger/fl;->a(Lorg/jshybugger/fn;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_13
    return-object v0

    .line 38
    :cond_14
    add-int/lit8 v3, v2, -0x1

    iget-object v2, v0, Lorg/jshybugger/fo;->c:[Ljava/lang/Object;

    aget-object v2, v2, v3

    iget-object v4, v0, Lorg/jshybugger/fo;->c:[Ljava/lang/Object;

    aput-object v1, v4, v3

    iget-object v1, v0, Lorg/jshybugger/fo;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput v3, v0, Lorg/jshybugger/fo;->d:I

    move-object v1, v2

    goto :goto_d

    :cond_27
    move-object v0, v1

    goto :goto_13
.end method

.method protected abstract a(Lorg/jshybugger/fn;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fn;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Lorg/jshybugger/fn;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/jshybugger/fn;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    check-cast p2, Lorg/jshybugger/fo;

    .line 48
    iget-object v0, p2, Lorg/jshybugger/fo;->a:Lorg/jshybugger/fl;

    if-eq v0, p0, :cond_9

    move v0, v1

    .line 57
    :goto_8
    return v0

    .line 52
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p2, Lorg/jshybugger/fo;->b:Ljava/lang/Thread;

    if-eq v0, v2, :cond_13

    move v0, v1

    .line 53
    goto :goto_8

    .line 56
    :cond_13
    iget-object v0, p2, Lorg/jshybugger/fo;->e:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recycled already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget v2, p2, Lorg/jshybugger/fo;->d:I

    iget-object v0, p2, Lorg/jshybugger/fo;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v2, v0, :cond_39

    shl-int/lit8 v0, v2, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p2, Lorg/jshybugger/fo;->c:[Ljava/lang/Object;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p2, Lorg/jshybugger/fo;->c:[Ljava/lang/Object;

    :cond_39
    iget-object v0, p2, Lorg/jshybugger/fo;->c:[Ljava/lang/Object;

    aput-object p1, v0, v2

    add-int/lit8 v0, v2, 0x1

    iput v0, p2, Lorg/jshybugger/fo;->d:I

    .line 57
    const/4 v0, 0x1

    goto :goto_8
.end method
