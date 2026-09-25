.class public abstract Lorg/jshybugger/fy;
.super Ljava/lang/Object;
.source "AbstractEventExecutorGroup.java"

# interfaces
.implements Lorg/jshybugger/fL;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lorg/jshybugger/fN;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/jshybugger/fN;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lorg/jshybugger/fN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Callable;)Lorg/jshybugger/fN;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lorg/jshybugger/fN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/fK;->a(Ljava/util/concurrent/Callable;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jshybugger/fK;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/jshybugger/gc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/jshybugger/fK;->b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/fK;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/fK;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jshybugger/fK;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/fK;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/jshybugger/fy;->b()Lorg/jshybugger/fK;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jshybugger/fK;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lorg/jshybugger/fN;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/fN",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/jshybugger/fy;->a(JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method

.method public synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jshybugger/fy;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jshybugger/fy;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 9

    .prologue
    .line 30
    invoke-virtual/range {p0 .. p6}, Lorg/jshybugger/fy;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 9

    .prologue
    .line 30
    invoke-virtual/range {p0 .. p6}, Lorg/jshybugger/fy;->b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    return-object v0
.end method

.method public abstract shutdown()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/jshybugger/fy;->shutdown()V

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/jshybugger/fy;->a(Ljava/lang/Runnable;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/jshybugger/fy;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/jshybugger/fy;->a(Ljava/util/concurrent/Callable;)Lorg/jshybugger/fN;

    move-result-object v0

    return-object v0
.end method
