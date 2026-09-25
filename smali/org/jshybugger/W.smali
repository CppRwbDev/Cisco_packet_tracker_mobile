.class public final Lorg/jshybugger/w;
.super Lorg/jshybugger/s;
.source "Bootstrap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/s",
        "<",
        "Lorg/jshybugger/w;",
        "Lorg/jshybugger/aj;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lorg/jshybugger/gX;


# instance fields
.field private volatile g:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lorg/jshybugger/w;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/w;->f:Lorg/jshybugger/gX;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/jshybugger/s;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/jshybugger/w;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/jshybugger/s;-><init>(Lorg/jshybugger/s;)V

    .line 51
    iget-object v0, p1, Lorg/jshybugger/w;->g:Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/jshybugger/w;->g:Ljava/net/SocketAddress;

    .line 52
    return-void
.end method

.method static synthetic a(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 5

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jshybugger/w;->b(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    return-void
.end method

.method private b(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jshybugger/ao;
    .registers 10

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/jshybugger/w;->d()Lorg/jshybugger/ao;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Lorg/jshybugger/ao;->d()Lorg/jshybugger/aj;

    move-result-object v3

    .line 135
    invoke-interface {v2}, Lorg/jshybugger/ao;->h()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 151
    :goto_e
    return-object v2

    .line 139
    :cond_f
    invoke-interface {v3}, Lorg/jshybugger/aj;->k()Lorg/jshybugger/aM;

    move-result-object v6

    .line 140
    invoke-interface {v2}, Lorg/jshybugger/ao;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 141
    invoke-static {v2, v3, p1, p2, v6}, Lorg/jshybugger/w;->b(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    :goto_1c
    move-object v2, v6

    .line 151
    goto :goto_e

    .line 143
    :cond_1e
    new-instance v0, Lorg/jshybugger/x;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/jshybugger/x;-><init>(Lorg/jshybugger/w;Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    invoke-interface {v2, v0}, Lorg/jshybugger/ao;->a(Lorg/jshybugger/fO;)Lorg/jshybugger/ao;

    goto :goto_1c
.end method

.method private static b(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 12

    .prologue
    .line 160
    invoke-interface {p1}, Lorg/jshybugger/aj;->d()Lorg/jshybugger/bu;

    move-result-object v6

    new-instance v0, Lorg/jshybugger/y;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jshybugger/y;-><init>(Lorg/jshybugger/ao;Ljava/net/SocketAddress;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    invoke-interface {v6, v0}, Lorg/jshybugger/bu;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private e()Lorg/jshybugger/w;
    .registers 3

    .prologue
    .line 206
    invoke-super {p0}, Lorg/jshybugger/s;->a()Lorg/jshybugger/s;

    .line 207
    iget-object v0, p0, Lorg/jshybugger/s;->e:Lorg/jshybugger/at;

    if-nez v0, :cond_f

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_f
    return-object p0
.end method

.method private f()Lorg/jshybugger/w;
    .registers 2

    .prologue
    .line 216
    new-instance v0, Lorg/jshybugger/w;

    invoke-direct {v0, p0}, Lorg/jshybugger/w;-><init>(Lorg/jshybugger/w;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jshybugger/ao;
    .registers 5

    .prologue
    .line 122
    if-nez p1, :cond_a

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_a
    invoke-direct {p0}, Lorg/jshybugger/w;->e()Lorg/jshybugger/w;

    .line 126
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/w;->b(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a()Lorg/jshybugger/s;
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jshybugger/w;->e()Lorg/jshybugger/w;

    move-result-object v0

    return-object v0
.end method

.method final a(Lorg/jshybugger/aj;)V
    .registers 8

    .prologue
    .line 180
    invoke-interface {p1}, Lorg/jshybugger/aj;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    .line 181
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/jshybugger/at;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jshybugger/s;->e:Lorg/jshybugger/at;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->a([Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 183
    iget-object v2, p0, Lorg/jshybugger/s;->c:Ljava/util/Map;

    .line 184
    monitor-enter v2

    .line 185
    :try_start_12
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_65

    .line 187
    :try_start_26
    invoke-interface {p1}, Lorg/jshybugger/aj;->A()Lorg/jshybugger/al;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jshybugger/aB;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/jshybugger/al;->a(Lorg/jshybugger/aB;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 188
    sget-object v1, Lorg/jshybugger/w;->f:Lorg/jshybugger/gX;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown channel option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_4e} :catch_4f
    .catchall {:try_start_26 .. :try_end_4e} :catchall_65

    goto :goto_1a

    .line 190
    :catch_4f
    move-exception v0

    .line 191
    :try_start_50
    sget-object v1, Lorg/jshybugger/w;->f:Lorg/jshybugger/gX;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set a channel option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_65

    goto :goto_1a

    .line 194
    :catchall_65
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_68
    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_65

    .line 196
    iget-object v2, p0, Lorg/jshybugger/s;->d:Ljava/util/Map;

    .line 197
    monitor-enter v2

    .line 198
    :try_start_6c
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jshybugger/fc;

    invoke-interface {p1, v1}, Lorg/jshybugger/aj;->a(Lorg/jshybugger/fc;)Lorg/jshybugger/fb;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jshybugger/fb;->set(Ljava/lang/Object;)V
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_92

    goto :goto_74

    .line 201
    :catchall_92
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_95
    :try_start_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_92

    return-void
.end method

.method public final synthetic b()Lorg/jshybugger/s;
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jshybugger/w;->f()Lorg/jshybugger/w;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/net/SocketAddress;)Lorg/jshybugger/ao;
    .registers 4

    .prologue
    .line 110
    if-nez p1, :cond_a

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a
    invoke-direct {p0}, Lorg/jshybugger/w;->e()Lorg/jshybugger/w;

    .line 115
    iget-object v0, p0, Lorg/jshybugger/s;->b:Ljava/net/SocketAddress;

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/w;->b(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jshybugger/w;->f()Lorg/jshybugger/w;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lorg/jshybugger/w;->g:Ljava/net/SocketAddress;

    if-nez v0, :cond_9

    .line 222
    invoke-super {p0}, Lorg/jshybugger/s;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_8
    return-object v0

    .line 225
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/jshybugger/s;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    const-string v1, ", remoteAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Lorg/jshybugger/w;->g:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
