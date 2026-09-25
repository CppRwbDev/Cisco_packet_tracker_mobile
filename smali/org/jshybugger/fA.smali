.class final Lorg/jshybugger/fa;
.super Ljava/lang/Object;
.source "IdleStateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/jshybugger/aw;

.field private synthetic b:Lorg/jshybugger/eW;


# direct methods
.method constructor <init>(Lorg/jshybugger/eW;Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 368
    iput-object p1, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lorg/jshybugger/fa;->a:Lorg/jshybugger/aw;

    .line 370
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 374
    iget-object v0, p0, Lorg/jshybugger/fa;->a:Lorg/jshybugger/aw;

    invoke-interface {v0}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->B()Z

    move-result v0

    if-nez v0, :cond_d

    .line 401
    :goto_c
    return-void

    .line 378
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 379
    iget-object v2, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    iget-wide v2, v2, Lorg/jshybugger/eW;->e:J

    .line 380
    iget-object v4, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    invoke-static {v4}, Lorg/jshybugger/eW;->c(Lorg/jshybugger/eW;)J

    move-result-wide v4

    sub-long/2addr v0, v2

    sub-long v0, v4, v0

    .line 381
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5c

    .line 383
    iget-object v0, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    iget-object v1, p0, Lorg/jshybugger/fa;->a:Lorg/jshybugger/aw;

    invoke-interface {v1}, Lorg/jshybugger/aw;->d()Lorg/jshybugger/fK;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    invoke-static {v2}, Lorg/jshybugger/eW;->c(Lorg/jshybugger/eW;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/eW;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 387
    :try_start_3a
    iget-object v0, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    invoke-static {v0}, Lorg/jshybugger/eW;->d(Lorg/jshybugger/eW;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 388
    iget-object v0, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jshybugger/eW;->a(Lorg/jshybugger/eW;Z)Z

    .line 389
    sget-object v0, Lorg/jshybugger/eV;->c:Lorg/jshybugger/eV;

    .line 393
    :goto_4a
    iget-object v1, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    iget-object v1, p0, Lorg/jshybugger/fa;->a:Lorg/jshybugger/aw;

    invoke-static {v1, v0}, Lorg/jshybugger/eW;->a(Lorg/jshybugger/aw;Lorg/jshybugger/eV;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_51} :catch_52

    goto :goto_c

    .line 394
    :catch_52
    move-exception v0

    .line 395
    iget-object v1, p0, Lorg/jshybugger/fa;->a:Lorg/jshybugger/aw;

    invoke-interface {v1, v0}, Lorg/jshybugger/aw;->b(Ljava/lang/Throwable;)Lorg/jshybugger/aw;

    goto :goto_c

    .line 391
    :cond_59
    :try_start_59
    sget-object v0, Lorg/jshybugger/eV;->d:Lorg/jshybugger/eV;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5b} :catch_52

    goto :goto_4a

    .line 399
    :cond_5c
    iget-object v2, p0, Lorg/jshybugger/fa;->b:Lorg/jshybugger/eW;

    iget-object v3, p0, Lorg/jshybugger/fa;->a:Lorg/jshybugger/aw;

    invoke-interface {v3}, Lorg/jshybugger/aw;->d()Lorg/jshybugger/fK;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v0, v1, v4}, Lorg/jshybugger/fK;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    iput-object v0, v2, Lorg/jshybugger/eW;->d:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_c
.end method
