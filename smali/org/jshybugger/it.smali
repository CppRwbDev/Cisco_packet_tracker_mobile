.class public final Lorg/jshybugger/iT;
.super Lorg/jshybugger/ig;
.source "NetworkMsgHandler.java"


# static fields
.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/hQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/iT;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string v0, "Network"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/iT;->b:Z

    .line 55
    iput-object v1, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lorg/jshybugger/iT;->d:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    .line 64
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jshybugger/dJ;Ljava/lang/String;)Lorg/jshybugger/hQ;
    .registers 11

    .prologue
    .line 258
    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    .line 260
    sget-object v0, Lorg/jshybugger/iT;->f:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "requestId"

    invoke-virtual {v2, v0, p0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 263
    const-string v0, "timestamp"

    invoke-static {}, Lorg/jshybugger/jk;->f()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;D)Lorg/jshybugger/hQ;

    .line 264
    const-string v0, "initiator"

    new-instance v1, Lorg/jshybugger/hQ;

    invoke-direct {v1}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "type"

    const-string v4, "other"

    invoke-virtual {v1, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 266
    new-instance v3, Lorg/jshybugger/hQ;

    invoke-direct {v3}, Lorg/jshybugger/hQ;-><init>()V

    .line 267
    const-string v0, "request"

    invoke-virtual {v2, v0, v3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 268
    const-string v0, "url"

    invoke-virtual {v3, v0, p1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 269
    const-string v0, "method"

    invoke-virtual {v3, v0, p2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 271
    if-eqz p3, :cond_69

    .line 272
    new-instance v4, Lorg/jshybugger/hQ;

    invoke-direct {v4}, Lorg/jshybugger/hQ;-><init>()V

    .line 273
    const-string v0, "headers"

    invoke-virtual {v3, v0, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 275
    invoke-virtual {p3}, Lorg/jshybugger/dJ;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    goto :goto_4e

    .line 280
    :cond_69
    if-eqz p4, :cond_70

    .line 281
    const-string v0, "postData"

    invoke-virtual {v3, v0, p4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 284
    :cond_70
    return-object v2
.end method

.method private a(Lorg/jshybugger/jn;)V
    .registers 8

    .prologue
    .line 316
    iget-object v1, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    monitor-enter v1

    .line 318
    :try_start_3
    iget-object v0, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/hQ;

    .line 320
    const-string v3, "params"

    invoke-virtual {v0, v3}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 321
    const-string v3, "params"

    invoke-virtual {v0, v3}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v3

    .line 322
    const-string v4, "frameId"

    invoke-virtual {v3, v4}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 323
    const-string v4, "frameId"

    iget-object v5, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 325
    :cond_32
    const-string v4, "loaderId"

    invoke-virtual {v3, v4}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 326
    const-string v4, "loaderId"

    iget-object v5, p0, Lorg/jshybugger/iT;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 329
    :cond_41
    invoke-virtual {v0}, Lorg/jshybugger/hQ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_49

    goto :goto_9

    .line 334
    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0

    .line 333
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_49

    return-void
.end method

.method private b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V
    .registers 5

    .prologue
    .line 297
    iget-object v1, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    monitor-enter v1

    .line 298
    :try_start_3
    iget-object v0, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 299
    iget-object v0, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :goto_c
    monitor-exit v1

    return-void

    .line 302
    :cond_e
    invoke-direct {p0, p1}, Lorg/jshybugger/iT;->a(Lorg/jshybugger/jn;)V

    .line 305
    invoke-virtual {p2}, Lorg/jshybugger/hQ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_c

    .line 307
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 11

    .prologue
    .line 72
    const-string v0, "enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/iT;->b:Z

    .line 83
    :cond_b
    :goto_b
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    .line 84
    :goto_e
    return-void

    .line 74
    :cond_f
    const-string v0, "disable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/iT;->b:Z

    goto :goto_b

    .line 77
    :cond_1b
    const-string v0, "getResponseBody"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 79
    const-string v0, "params"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v0

    const-string v1, "requestId"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/jshybugger/iT;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_88

    :try_start_3b
    invoke-static {}, Lorg/jshybugger/hE;->c()Lorg/jshybugger/hE;

    move-result-object v1

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jshybugger/hE;->f(Ljava/net/URI;)Z

    move-result v1

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "id"

    const-string v4, "id"

    invoke-virtual {p3, v4}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;I)Lorg/jshybugger/hQ;

    move-result-object v2

    const-string v3, "result"

    new-instance v4, Lorg/jshybugger/hQ;

    invoke-direct {v4}, Lorg/jshybugger/hQ;-><init>()V

    const-string v5, "body"

    iget-object v6, p0, Lorg/jshybugger/iT;->a:Lorg/jshybugger/iz;

    invoke-static {v0, v1}, Lorg/jshybugger/iz;->a(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/jk;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    const-string v4, "base64Encoded"

    invoke-virtual {v0, v4, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Z)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hQ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_80} :catch_81

    goto :goto_e

    :catch_81
    move-exception v0

    new-instance v1, Lorg/jshybugger/hP;

    invoke-direct {v1, v0}, Lorg/jshybugger/hP;-><init>(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_88
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_e
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 117
    const-string v0, "GlobalInitHybugger"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 118
    iget-boolean v0, p0, Lorg/jshybugger/iT;->b:Z

    if-eqz v0, :cond_1d

    .line 119
    iget-object v0, p0, Lorg/jshybugger/iT;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Network.enable"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    invoke-interface {v0, v1, v2, v4}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 121
    :cond_1d
    const-string v0, "frameId"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    .line 122
    const-string v0, "loaderId"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "loaderId"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_37
    iput-object v0, p0, Lorg/jshybugger/iT;->d:Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1}, Lorg/jshybugger/iT;->a(Lorg/jshybugger/jn;)V

    .line 156
    :cond_3c
    :goto_3c
    return-object v4

    .line 122
    :cond_3d
    iget-object v0, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    goto :goto_37

    .line 125
    :cond_40
    const-string v0, "GlobalPageReload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 127
    iput-object v4, p0, Lorg/jshybugger/iT;->d:Ljava/lang/String;

    iput-object v4, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_4f
    iget-object v0, p0, Lorg/jshybugger/iT;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_5b

    .line 131
    sget-object v0, Lorg/jshybugger/iT;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_3c

    .line 130
    :catchall_5b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 133
    :cond_5e
    const-string v0, "requestWillBeSent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 135
    if-eqz p1, :cond_3c

    const-string v0, "frameId"

    iget-object v1, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    const-string v0, "loaderId"

    iget-object v1, p0, Lorg/jshybugger/iT;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    const-string v0, "documentURL"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "documentURL"

    iget-object v1, p0, Lorg/jshybugger/iT;->a:Lorg/jshybugger/iz;

    invoke-virtual {v1}, Lorg/jshybugger/iz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    :cond_89
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    const-string v1, "method"

    const-string v2, "Network.requestWillBeSent"

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1, p3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/iT;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto :goto_3c

    .line 137
    :cond_a0
    const-string v0, "loadingFinished"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 139
    if-eqz p1, :cond_3c

    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    const-string v1, "requestId"

    const-string v2, "requestId"

    invoke-virtual {p3, v2}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    const-string v1, "timestamp"

    invoke-static {}, Lorg/jshybugger/jk;->f()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;D)Lorg/jshybugger/hQ;

    new-instance v1, Lorg/jshybugger/hQ;

    invoke-direct {v1}, Lorg/jshybugger/hQ;-><init>()V

    const-string v2, "method"

    const-string v3, "Network.loadingFinished"

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/iT;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto/16 :goto_3c

    .line 141
    :cond_db
    const-string v0, "loadingFailed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 143
    if-eqz p1, :cond_3c

    new-instance v1, Lorg/jshybugger/hQ;

    invoke-direct {v1}, Lorg/jshybugger/hQ;-><init>()V

    const-string v0, "requestId"

    const-string v2, "requestId"

    invoke-virtual {p3, v2}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    const-string v0, "timestamp"

    invoke-static {}, Lorg/jshybugger/jk;->f()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;D)Lorg/jshybugger/hQ;

    const-string v2, "error"

    const-string v0, "error"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_129

    const-string v0, "error"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_10e
    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    const-string v2, "method"

    const-string v3, "Network.loadingFailed"

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/iT;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto/16 :goto_3c

    :cond_129
    const-string v0, ""

    goto :goto_10e

    .line 145
    :cond_12c
    const-string v0, "responseReceived"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 147
    if-eqz p1, :cond_3c

    const-string v0, "frameId"

    iget-object v1, p0, Lorg/jshybugger/iT;->c:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    const-string v0, "loaderId"

    iget-object v1, p0, Lorg/jshybugger/iT;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    const-string v0, "timestamp"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_155

    const-string v0, "timestamp"

    invoke-static {}, Lorg/jshybugger/jk;->f()D

    move-result-wide v2

    invoke-virtual {p3, v0, v2, v3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;D)Lorg/jshybugger/hQ;

    :cond_155
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    const-string v1, "method"

    const-string v2, "Network.responseReceived"

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1, p3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/iT;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto/16 :goto_3c

    .line 149
    :cond_16d
    const-string v0, "dataReceived"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 151
    if-eqz p1, :cond_3c

    const-string v0, "timestamp"

    invoke-static {}, Lorg/jshybugger/jk;->f()D

    move-result-wide v2

    invoke-virtual {p3, v0, v2, v3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;D)Lorg/jshybugger/hQ;

    const-string v0, "encodedDataLength"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;I)Lorg/jshybugger/hQ;

    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    const-string v1, "method"

    const-string v2, "Network.dataReceived"

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1, p3}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/iT;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto/16 :goto_3c

    .line 154
    :cond_19e
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    goto/16 :goto_3c
.end method
