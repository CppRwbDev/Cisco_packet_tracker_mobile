.class final Lorg/jshybugger/gg;
.super Ljava/lang/Object;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/ge;


# direct methods
.method constructor <init>(Lorg/jshybugger/ge;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    const/16 v4, 0x29

    .line 98
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v0}, Lorg/jshybugger/ge;->l()V

    .line 101
    :try_start_9
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v0}, Lorg/jshybugger/ge;->f()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_1be
    .catchall {:try_start_9 .. :try_end_e} :catchall_33b

    .line 102
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;)I

    move-result v0

    if-ge v0, v3, :cond_1b

    .line 107
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 111
    :cond_1b
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->b(Lorg/jshybugger/ge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_59

    .line 112
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buggy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/jshybugger/fK;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jshybugger/ge;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".confirmShutdown() must be called before run() implementation terminates."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/gX;->d(Ljava/lang/String;)V

    .line 121
    :cond_59
    :try_start_59
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v0}, Lorg/jshybugger/ge;->n()Z
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_10f

    move-result v0

    if-eqz v0, :cond_59

    .line 122
    :try_start_61
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v0}, Lorg/jshybugger/ge;->g()V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_ba

    .line 129
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_6d
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_b7

    .line 132
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An event executor terminated with non-empty task queue ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v2}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_ad
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    .line 142
    :goto_b6
    return-void

    .line 131
    :catchall_b7
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :catchall_ba
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_c2
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_10c

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_102

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_102
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_10c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :catchall_10f
    move-exception v0

    .line 127
    :try_start_110
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v1}, Lorg/jshybugger/ge;->g()V
    :try_end_115
    .catchall {:try_start_110 .. :try_end_115} :catchall_169

    .line 129
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_11c
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_166

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15c

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_15c
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_166
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :catchall_169
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_171
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_178
    .catchall {:try_start_171 .. :try_end_178} :catchall_1bb

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b1

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_1b1
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_1bb
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :catch_1be
    move-exception v0

    .line 104
    :try_start_1bf
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    const-string v2, "Unexpected exception from an event executor: "

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c8
    .catchall {:try_start_1bf .. :try_end_1c8} :catchall_33b

    .line 106
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;)I

    move-result v0

    if-ge v0, v3, :cond_1d5

    .line 107
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 111
    :cond_1d5
    :try_start_1d5
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v0}, Lorg/jshybugger/ge;->n()Z
    :try_end_1da
    .catchall {:try_start_1d5 .. :try_end_1da} :catchall_28c

    move-result v0

    if-eqz v0, :cond_1d5

    .line 122
    :try_start_1dd
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v0}, Lorg/jshybugger/ge;->g()V
    :try_end_1e2
    .catchall {:try_start_1dd .. :try_end_1e2} :catchall_237

    .line 129
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_1e9
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_1f0
    .catchall {:try_start_1e9 .. :try_end_1f0} :catchall_234

    .line 132
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_229

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An event executor terminated with non-empty task queue ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v2}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_229
    iget-object v0, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v0}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    goto/16 :goto_b6

    .line 131
    :catchall_234
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :catchall_237
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_23f
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_246
    .catchall {:try_start_23f .. :try_end_246} :catchall_289

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27f

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_27f
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_289
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :catchall_28c
    move-exception v0

    .line 127
    :try_start_28d
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v1}, Lorg/jshybugger/ge;->g()V
    :try_end_292
    .catchall {:try_start_28d .. :try_end_292} :catchall_2e6

    .line 129
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_299
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_2a0
    .catchall {:try_start_299 .. :try_end_2a0} :catchall_2e3

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d9

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_2d9
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_2e3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :catchall_2e6
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_2ee
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_2f5
    .catchall {:try_start_2ee .. :try_end_2f5} :catchall_338

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32e

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_32e
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_338
    move-exception v0

    monitor-exit v1

    throw v0

    .line 106
    :catchall_33b
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;)I

    move-result v1

    if-ge v1, v3, :cond_349

    .line 107
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 111
    :cond_349
    :try_start_349
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v1}, Lorg/jshybugger/ge;->n()Z
    :try_end_34e
    .catchall {:try_start_349 .. :try_end_34e} :catchall_3ff

    move-result v1

    if-eqz v1, :cond_349

    .line 122
    :try_start_351
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v1}, Lorg/jshybugger/ge;->g()V
    :try_end_356
    .catchall {:try_start_351 .. :try_end_356} :catchall_3aa

    .line 129
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_35d
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_364
    .catchall {:try_start_35d .. :try_end_364} :catchall_3a7

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39d

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_39d
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_3a7
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :catchall_3aa
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_3b2
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_3b9
    .catchall {:try_start_3b2 .. :try_end_3b9} :catchall_3fc

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f2

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_3f2
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_3fc
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :catchall_3ff
    move-exception v0

    .line 127
    :try_start_400
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-virtual {v1}, Lorg/jshybugger/ge;->g()V
    :try_end_405
    .catchall {:try_start_400 .. :try_end_405} :catchall_459

    .line 129
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_40c
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_413
    .catchall {:try_start_40c .. :try_end_413} :catchall_456

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44c

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_44c
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_456
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :catchall_459
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->c(Lorg/jshybugger/ge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_461
    iget-object v2, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/jshybugger/ge;->a(Lorg/jshybugger/ge;I)I

    .line 131
    monitor-exit v1
    :try_end_468
    .catchall {:try_start_461 .. :try_end_468} :catchall_4ab

    .line 132
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->d(Lorg/jshybugger/ge;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a1

    .line 134
    invoke-static {}, Lorg/jshybugger/ge;->o()Lorg/jshybugger/gX;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An event executor terminated with non-empty task queue ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v3}, Lorg/jshybugger/ge;->e(Lorg/jshybugger/ge;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 139
    :cond_4a1
    iget-object v1, p0, Lorg/jshybugger/gg;->a:Lorg/jshybugger/ge;

    invoke-static {v1}, Lorg/jshybugger/ge;->f(Lorg/jshybugger/ge;)Lorg/jshybugger/fZ;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    throw v0

    .line 131
    :catchall_4ab
    move-exception v0

    monitor-exit v1

    throw v0
.end method
