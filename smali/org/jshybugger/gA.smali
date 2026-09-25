.class Lorg/jshybugger/ga;
.super Lorg/jshybugger/fD;
.source "PromiseTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jshybugger/fD",
        "<TV;>;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jshybugger/fK;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fK;",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p2, p3}, Lorg/jshybugger/ga;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ga;-><init>(Lorg/jshybugger/fK;Ljava/util/concurrent/Callable;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/jshybugger/fK;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fK;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/jshybugger/fD;-><init>(Lorg/jshybugger/fK;)V

    .line 56
    iput-object p2, p0, Lorg/jshybugger/ga;->a:Ljava/util/concurrent/Callable;

    .line 57
    return-void
.end method

.method static a(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lorg/jshybugger/gb;

    invoke-direct {v0, p0, p1}, Lorg/jshybugger/gb;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lorg/jshybugger/fZ;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lorg/jshybugger/fZ",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected final a(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/jshybugger/fZ",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;

    .line 88
    return-object p0
.end method

.method protected final a()Z
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Lorg/jshybugger/fD;->m()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected final c(Ljava/lang/Object;)Lorg/jshybugger/fZ;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lorg/jshybugger/fZ",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    .line 107
    return-object p0
.end method

.method public final c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/jshybugger/fZ",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 66
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 61
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected n()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 130
    invoke-super {p0}, Lorg/jshybugger/fD;->n()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 132
    const-string v1, " task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lorg/jshybugger/ga;->a:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    return-object v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 72
    :try_start_0
    invoke-super {p0}, Lorg/jshybugger/fD;->m()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    iget-object v0, p0, Lorg/jshybugger/ga;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 74
    invoke-super {p0, v0}, Lorg/jshybugger/fD;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 79
    :cond_f
    :goto_f
    return-void

    .line 76
    :catch_10
    move-exception v0

    .line 77
    invoke-super {p0, v0}, Lorg/jshybugger/fD;->c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;

    goto :goto_f
.end method
