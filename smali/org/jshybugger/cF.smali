.class public abstract Lorg/jshybugger/cf;
.super Lorg/jshybugger/Z;
.source "AbstractNioChannel.java"

# interfaces
.implements Lorg/jshybugger/ci;


# static fields
.field private static synthetic c:Z


# instance fields
.field final synthetic b:Lorg/jshybugger/ce;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 149
    const-class v0, Lorg/jshybugger/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jshybugger/cf;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jshybugger/ce;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-direct {p0, p1}, Lorg/jshybugger/Z;-><init>(Lorg/jshybugger/Y;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 10

    .prologue
    .line 159
    invoke-virtual {p0, p3}, Lorg/jshybugger/cf;->c(Lorg/jshybugger/aM;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 216
    :cond_6
    :goto_6
    return-void

    .line 164
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;)Lorg/jshybugger/aM;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connection attempt already made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_17

    .line 207
    :catch_17
    move-exception v1

    .line 208
    instance-of v0, v1, Ljava/net/ConnectException;

    if-eqz v0, :cond_a6

    .line 209
    new-instance v0, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 213
    :goto_43
    invoke-interface {p3, v0}, Lorg/jshybugger/aM;->b(Ljava/lang/Throwable;)Z

    .line 214
    invoke-virtual {p0}, Lorg/jshybugger/cf;->i()V

    goto :goto_6

    .line 168
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->C()Z

    move-result v0

    .line 169
    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v1, p1, p2}, Lorg/jshybugger/ce;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 170
    invoke-interface {p3}, Lorg/jshybugger/aM;->a()Lorg/jshybugger/aM;

    .line 171
    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aJ;->a()Lorg/jshybugger/aJ;

    goto :goto_6

    .line 175
    :cond_6f
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0, p3}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;Lorg/jshybugger/aM;)Lorg/jshybugger/aM;

    .line 176
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0, p1}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 179
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->A()Lorg/jshybugger/al;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/al;->a()I

    move-result v0

    .line 180
    if-lez v0, :cond_9c

    .line 181
    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    iget-object v2, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v2}, Lorg/jshybugger/ce;->H()Lorg/jshybugger/cl;

    move-result-object v2

    new-instance v3, Lorg/jshybugger/cg;

    invoke-direct {v3, p0, p1}, Lorg/jshybugger/cg;-><init>(Lorg/jshybugger/cf;Ljava/net/SocketAddress;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v0}, Lorg/jshybugger/cl;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lorg/jshybugger/gc;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 194
    :cond_9c
    new-instance v0, Lorg/jshybugger/ch;

    invoke-direct {v0, p0}, Lorg/jshybugger/ch;-><init>(Lorg/jshybugger/cf;)V

    invoke-interface {p3, v0}, Lorg/jshybugger/aM;->c(Lorg/jshybugger/fO;)Lorg/jshybugger/aM;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_a4} :catch_17

    goto/16 :goto_6

    :cond_a6
    move-object v0, v1

    goto :goto_43
.end method

.method protected final g()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_1a

    .line 261
    :goto_17
    return-void

    .line 257
    :cond_18
    const/4 v0, 0x0

    goto :goto_15

    .line 260
    :cond_1a
    invoke-super {p0}, Lorg/jshybugger/Z;->g()V

    goto :goto_17
.end method

.method public final k()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 223
    sget-boolean v0, Lorg/jshybugger/cf;->c:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->H()Lorg/jshybugger/cl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/cl;->d()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_18
    sget-boolean v0, Lorg/jshybugger/cf;->c:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;)Lorg/jshybugger/aM;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->C()Z

    move-result v0

    .line 228
    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v1}, Lorg/jshybugger/ce;->K()V

    .line 229
    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v1}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;)Lorg/jshybugger/aM;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/aM;->a()Lorg/jshybugger/aM;

    .line 230
    if-nez v0, :cond_51

    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->C()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 231
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-virtual {v0}, Lorg/jshybugger/ce;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aJ;->a()Lorg/jshybugger/aJ;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_51} :catch_68
    .catchall {:try_start_2a .. :try_end_51} :catchall_be

    .line 245
    :cond_51
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 246
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 248
    :cond_62
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0, v5}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;Lorg/jshybugger/aM;)Lorg/jshybugger/aM;

    .line 249
    :goto_67
    return-void

    .line 233
    :catch_68
    move-exception v0

    .line 234
    :try_start_69
    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_9b

    .line 235
    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v3}, Lorg/jshybugger/ce;->c(Lorg/jshybugger/ce;)Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    move-object v0, v1

    .line 240
    :cond_9b
    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v1}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;)Lorg/jshybugger/aM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jshybugger/aM;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aM;

    .line 241
    invoke-virtual {p0}, Lorg/jshybugger/cf;->i()V
    :try_end_a7
    .catchall {:try_start_69 .. :try_end_a7} :catchall_be

    .line 245
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 246
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 248
    :cond_b8
    iget-object v0, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v0, v5}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;Lorg/jshybugger/aM;)Lorg/jshybugger/aM;

    goto :goto_67

    .line 245
    :catchall_be
    move-exception v0

    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v1}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_d0

    .line 246
    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v1}, Lorg/jshybugger/ce;->b(Lorg/jshybugger/ce;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 248
    :cond_d0
    iget-object v1, p0, Lorg/jshybugger/cf;->b:Lorg/jshybugger/ce;

    invoke-static {v1, v5}, Lorg/jshybugger/ce;->a(Lorg/jshybugger/ce;Lorg/jshybugger/aM;)Lorg/jshybugger/aM;

    throw v0
.end method

.method public final l()V
    .registers 1

    .prologue
    .line 266
    invoke-super {p0}, Lorg/jshybugger/Z;->g()V

    .line 267
    return-void
.end method
