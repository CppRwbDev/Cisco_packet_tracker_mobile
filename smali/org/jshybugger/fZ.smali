.class public abstract Lorg/jshybugger/fz;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lorg/jshybugger/fN;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jshybugger/fN",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/jshybugger/fz;->c()Lorg/jshybugger/fN;

    .line 33
    invoke-virtual {p0}, Lorg/jshybugger/fz;->h()Ljava/lang/Throwable;

    move-result-object v0

    .line 34
    if-nez v0, :cond_e

    .line 35
    invoke-virtual {p0}, Lorg/jshybugger/fz;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 37
    :cond_e
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/fz;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 43
    invoke-virtual {p0}, Lorg/jshybugger/fz;->h()Ljava/lang/Throwable;

    move-result-object v0

    .line 44
    if-nez v0, :cond_11

    .line 45
    invoke-virtual {p0}, Lorg/jshybugger/fz;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 47
    :cond_11
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    :cond_17
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method
