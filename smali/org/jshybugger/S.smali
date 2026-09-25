.class public abstract Lorg/jshybugger/s;
.super Ljava/lang/Object;
.source "AbstractBootstrap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/jshybugger/s",
        "<TB;TC;>;C::",
        "Lorg/jshybugger/aj;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field volatile a:Lorg/jshybugger/bv;

.field volatile b:Ljava/net/SocketAddress;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jshybugger/aB",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jshybugger/fc",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile e:Lorg/jshybugger/at;

.field private volatile f:Lorg/jshybugger/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/z",
            "<+TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/s;->d:Ljava/util/Map;

    .line 55
    return-void
.end method

.method constructor <init>(Lorg/jshybugger/s;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/s",
            "<TB;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/s;->d:Ljava/util/Map;

    .line 58
    iget-object v0, p1, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    iput-object v0, p0, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    .line 59
    iget-object v0, p1, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    iput-object v0, p0, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    .line 60
    iget-object v0, p1, Lorg/jshybugger/s;->e:Lorg/jshybugger/at;

    iput-object v0, p0, Lorg/jshybugger/s;->e:Lorg/jshybugger/at;

    .line 61
    iget-object v0, p1, Lorg/jshybugger/s;->b:Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/jshybugger/s;->b:Ljava/net/SocketAddress;

    .line 62
    iget-object v1, p1, Lorg/jshybugger/s;->c:Ljava/util/Map;

    monitor-enter v1

    .line 63
    :try_start_24
    iget-object v0, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    iget-object v2, p1, Lorg/jshybugger/s;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 64
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_38

    .line 65
    iget-object v1, p1, Lorg/jshybugger/s;->d:Ljava/util/Map;

    monitor-enter v1

    .line 66
    :try_start_2f
    iget-object v0, p0, Lorg/jshybugger/s;->d:Ljava/util/Map;

    iget-object v2, p1, Lorg/jshybugger/s;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 67
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3b

    return-void

    .line 64
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 4

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lorg/jshybugger/s;->b(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    return-void
.end method

.method private static b(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 6

    .prologue
    .line 327
    invoke-interface {p1}, Lorg/jshybugger/aj;->d()Lorg/jshybugger/bu;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/u;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/jshybugger/u;-><init>(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    invoke-interface {v0, v1}, Lorg/jshybugger/bu;->execute(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method private c(Ljava/net/SocketAddress;)Lorg/jshybugger/ao;
    .registers 6

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/jshybugger/s;->d()Lorg/jshybugger/ao;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Lorg/jshybugger/ao;->d()Lorg/jshybugger/aj;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Lorg/jshybugger/aj;->k()Lorg/jshybugger/aM;

    move-result-object v2

    .line 273
    invoke-interface {v0}, Lorg/jshybugger/ao;->isDone()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 274
    invoke-static {v0, v1, p1, v2}, Lorg/jshybugger/s;->b(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    .line 284
    :goto_15
    return-object v2

    .line 276
    :cond_16
    new-instance v3, Lorg/jshybugger/t;

    invoke-direct {v3, p0, v1, p1, v2}, Lorg/jshybugger/t;-><init>(Lorg/jshybugger/s;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    invoke-interface {v0, v3}, Lorg/jshybugger/ao;->a(Lorg/jshybugger/fO;)Lorg/jshybugger/ao;

    goto :goto_15
.end method


# virtual methods
.method public a()Lorg/jshybugger/s;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    if-nez v0, :cond_c

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "group not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_c
    iget-object v0, p0, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    if-nez v0, :cond_18

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "factory not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_18
    return-object p0
.end method

.method public final a(Ljava/lang/Class;)Lorg/jshybugger/s;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TC;>;)TB;"
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_a

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channelClass"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_a
    new-instance v0, Lorg/jshybugger/v;

    invoke-direct {v0, p1}, Lorg/jshybugger/v;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/jshybugger/s;->a(Lorg/jshybugger/z;)Lorg/jshybugger/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/SocketAddress;)Lorg/jshybugger/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lorg/jshybugger/s;->b:Ljava/net/SocketAddress;

    .line 125
    return-object p0
.end method

.method public final a(Lorg/jshybugger/aB;Ljava/lang/Object;)Lorg/jshybugger/s;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jshybugger/aB",
            "<TT;>;TT;)TB;"
        }
    .end annotation

    .prologue
    .line 155
    if-nez p1, :cond_a

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "option"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_a
    if-nez p2, :cond_19

    .line 159
    iget-object v1, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    monitor-enter v1

    .line 160
    :try_start_f
    iget-object v0, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    .line 167
    :goto_15
    return-object p0

    .line 161
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    .line 163
    :cond_19
    iget-object v1, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    monitor-enter v1

    .line 164
    :try_start_1c
    iget-object v0, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_23

    goto :goto_15

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lorg/jshybugger/at;)Lorg/jshybugger/s;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/at;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 344
    if-nez p1, :cond_a

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_a
    iput-object p1, p0, Lorg/jshybugger/s;->e:Lorg/jshybugger/at;

    .line 348
    return-object p0
.end method

.method public a(Lorg/jshybugger/bv;)Lorg/jshybugger/s;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/bv;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_a

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "group"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    if-eqz v0, :cond_16

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "group set already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_16
    iput-object p1, p0, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    .line 83
    return-object p0
.end method

.method public final a(Lorg/jshybugger/z;)Lorg/jshybugger/s;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/z",
            "<+TC;>;)TB;"
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_a

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channelFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_a
    iget-object v0, p0, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    if-eqz v0, :cond_16

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channelFactory set already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_16
    iput-object p1, p0, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    .line 115
    return-object p0
.end method

.method abstract a(Lorg/jshybugger/aj;)V
.end method

.method public final b(Ljava/net/SocketAddress;)Lorg/jshybugger/ao;
    .registers 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/jshybugger/s;->a()Lorg/jshybugger/s;

    .line 263
    if-nez p1, :cond_d

    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_d
    invoke-direct {p0, p1}, Lorg/jshybugger/s;->c(Ljava/net/SocketAddress;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Lorg/jshybugger/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final c()Lorg/jshybugger/ao;
    .registers 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/jshybugger/s;->a()Lorg/jshybugger/s;

    .line 230
    iget-object v0, p0, Lorg/jshybugger/s;->b:Ljava/net/SocketAddress;

    .line 231
    if-nez v0, :cond_f

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "localAddress not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_f
    invoke-direct {p0, v0}, Lorg/jshybugger/s;->c(Ljava/net/SocketAddress;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/jshybugger/s;->b()Lorg/jshybugger/s;

    move-result-object v0

    return-object v0
.end method

.method final d()Lorg/jshybugger/ao;
    .registers 4

    .prologue
    .line 288
    iget-object v0, p0, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    invoke-interface {v0}, Lorg/jshybugger/z;->a()Lorg/jshybugger/aj;

    move-result-object v1

    .line 290
    :try_start_6
    invoke-virtual {p0, v1}, Lorg/jshybugger/s;->a(Lorg/jshybugger/aj;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_22

    .line 296
    invoke-interface {v1}, Lorg/jshybugger/aj;->k()Lorg/jshybugger/aM;

    move-result-object v0

    .line 297
    iget-object v2, p0, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    invoke-interface {v2, v1, v0}, Lorg/jshybugger/bv;->a(Lorg/jshybugger/aj;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    .line 298
    invoke-interface {v0}, Lorg/jshybugger/aM;->h()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 299
    invoke-interface {v1}, Lorg/jshybugger/aj;->g()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 300
    invoke-interface {v1}, Lorg/jshybugger/aj;->h()Lorg/jshybugger/ao;

    .line 315
    :cond_21
    :goto_21
    return-object v0

    .line 291
    :catch_22
    move-exception v0

    .line 292
    invoke-interface {v1}, Lorg/jshybugger/aj;->n()Lorg/jshybugger/ak;

    move-result-object v2

    invoke-interface {v2}, Lorg/jshybugger/ak;->d()V

    .line 293
    invoke-interface {v1, v0}, Lorg/jshybugger/aj;->a(Ljava/lang/Throwable;)Lorg/jshybugger/ao;

    move-result-object v0

    goto :goto_21

    .line 302
    :cond_2f
    invoke-interface {v1}, Lorg/jshybugger/aj;->n()Lorg/jshybugger/ak;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/ak;->d()V

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x29

    const/16 v3, 0x28

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    invoke-static {p0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    iget-object v1, p0, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    if-eqz v1, :cond_2a

    .line 384
    const-string v1, "group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lorg/jshybugger/s;->a:Lorg/jshybugger/bv;

    invoke-static {v1}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2a
    iget-object v1, p0, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    if-eqz v1, :cond_3d

    .line 389
    const-string v1, "channelFactory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v1, p0, Lorg/jshybugger/s;->f:Lorg/jshybugger/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_3d
    iget-object v1, p0, Lorg/jshybugger/s;->b:Ljava/net/SocketAddress;

    if-eqz v1, :cond_50

    .line 394
    const-string v1, "localAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v1, p0, Lorg/jshybugger/s;->b:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_50
    iget-object v1, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    monitor-enter v1

    .line 399
    :try_start_53
    iget-object v2, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 400
    const-string v2, "options: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget-object v2, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_ad

    .line 405
    iget-object v1, p0, Lorg/jshybugger/s;->d:Ljava/util/Map;

    monitor-enter v1

    .line 406
    :try_start_6e
    iget-object v2, p0, Lorg/jshybugger/s;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    .line 407
    const-string v2, "attrs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v2, p0, Lorg/jshybugger/s;->d:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_b0

    .line 412
    iget-object v1, p0, Lorg/jshybugger/s;->e:Lorg/jshybugger/at;

    if-eqz v1, :cond_99

    .line 413
    const-string v1, "handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Lorg/jshybugger/s;->e:Lorg/jshybugger/at;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_b3

    .line 418
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :goto_a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 404
    :catchall_ad
    move-exception v0

    monitor-exit v1

    throw v0

    .line 411
    :catchall_b0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 420
    :cond_b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_a8
.end method
