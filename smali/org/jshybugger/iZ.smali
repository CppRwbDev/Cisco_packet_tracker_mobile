.class public final Lorg/jshybugger/iz;
.super Lorg/jshybugger/jq;
.source "DebugSession.java"


# static fields
.field private static i:J

.field private static j:Z

.field private static k:Z


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/iS;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/jn;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/jshybugger/ii;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private l:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/iz;-><init>(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/jshybugger/jq;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/iz;->c:Ljava/util/List;

    .line 92
    new-instance v0, Lorg/jshybugger/im;

    invoke-direct {v0, p0}, Lorg/jshybugger/im;-><init>(Lorg/jshybugger/iz;)V

    .line 93
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lorg/jshybugger/iU;

    invoke-direct {v0, p0}, Lorg/jshybugger/iU;-><init>(Lorg/jshybugger/iz;)V

    .line 96
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lorg/jshybugger/iC;

    invoke-direct {v0, p0}, Lorg/jshybugger/iC;-><init>(Lorg/jshybugger/iz;)V

    .line 99
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lorg/jshybugger/jb;

    invoke-direct {v0, p0}, Lorg/jshybugger/jb;-><init>(Lorg/jshybugger/iz;)V

    .line 102
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lorg/jshybugger/ij;

    invoke-direct {v0, p0}, Lorg/jshybugger/ij;-><init>(Lorg/jshybugger/iz;)V

    .line 105
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lorg/jshybugger/io;

    invoke-direct {v0, p0}, Lorg/jshybugger/io;-><init>(Lorg/jshybugger/iz;)V

    .line 108
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Lorg/jshybugger/ip;

    invoke-direct {v0, p0}, Lorg/jshybugger/ip;-><init>(Lorg/jshybugger/iz;)V

    .line 111
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lorg/jshybugger/ik;

    invoke-direct {v0, p0}, Lorg/jshybugger/ik;-><init>(Lorg/jshybugger/iz;)V

    .line 114
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lorg/jshybugger/il;

    invoke-direct {v0, p0}, Lorg/jshybugger/il;-><init>(Lorg/jshybugger/iz;)V

    .line 117
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lorg/jshybugger/iT;

    invoke-direct {v0, p0}, Lorg/jshybugger/iT;-><init>(Lorg/jshybugger/iz;)V

    .line 120
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Lorg/jshybugger/jc;

    invoke-direct {v0, p0}, Lorg/jshybugger/jc;-><init>(Lorg/jshybugger/iz;)V

    .line 123
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lorg/jshybugger/iO;

    invoke-direct {v0, p0}, Lorg/jshybugger/iO;-><init>(Lorg/jshybugger/iz;)V

    .line 126
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lorg/jshybugger/iR;

    invoke-direct {v0, p0}, Lorg/jshybugger/iR;-><init>(Lorg/jshybugger/iz;)V

    .line 129
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lorg/jshybugger/iL;

    invoke-direct {v0, p0}, Lorg/jshybugger/iL;-><init>(Lorg/jshybugger/iz;)V

    .line 132
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lorg/jshybugger/iZ;

    invoke-direct {v0, p0}, Lorg/jshybugger/iZ;-><init>(Lorg/jshybugger/iz;)V

    .line 135
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lorg/jshybugger/iK;

    invoke-direct {v0, p0}, Lorg/jshybugger/iK;-><init>(Lorg/jshybugger/iz;)V

    .line 138
    iget-object v1, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jshybugger/iS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lorg/jshybugger/iz;->e:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/iz;->l:Ljava/util/concurrent/ExecutorService;

    .line 142
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 7

    .prologue
    .line 337
    const-string v0, "DebugServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadScriptResourceById: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-eqz p1, :cond_2d

    const-string v0, "scriptSourceEncoded"

    .line 340
    :goto_18
    invoke-static {}, Lorg/jshybugger/hE;->c()Lorg/jshybugger/hE;

    move-result-object v1

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "original"

    invoke-virtual {v1, v2, v3, v0}, Lorg/jshybugger/hE;->a(Ljava/net/URI;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 344
    return-object v0

    .line 339
    :cond_2d
    const-string v0, "scriptSource"

    goto :goto_18
.end method

.method private a(Lorg/jshybugger/hQ;Ljava/lang/String;Lorg/jshybugger/iS;)Lorg/jshybugger/hQ;
    .registers 6

    .prologue
    .line 320
    iget-object v0, p0, Lorg/jshybugger/iz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 321
    const/4 v0, 0x0

    invoke-interface {p3, v0, p2, p1}, Lorg/jshybugger/iS;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    move-result-object v0

    .line 323
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lorg/jshybugger/iz;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/jn;

    invoke-interface {p3, v0, p2, p1}, Lorg/jshybugger/iS;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    move-result-object v0

    goto :goto_d
.end method

.method private c(Ljava/lang/String;)Lorg/jshybugger/iS;
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/iS;

    return-object v0
.end method

.method public static j()Z
    .registers 4

    .prologue
    .line 439
    invoke-static {}, Lorg/jshybugger/jk;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-wide v0, Lorg/jshybugger/iz;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    sget-wide v0, Lorg/jshybugger/iz;->i:J

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static k()V
    .registers 2

    .prologue
    .line 443
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/jshybugger/iz;->i:J

    .line 444
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jshybugger/iz;->j:Z

    .line 445
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/iz;->k:Z

    .line 446
    return-void
.end method

.method public static l()Z
    .registers 1

    .prologue
    .line 449
    invoke-static {}, Lorg/jshybugger/jk;->c()Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Lorg/jshybugger/iz;->j:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static m()V
    .registers 1

    .prologue
    .line 453
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/iz;->j:Z

    .line 454
    return-void
.end method

.method public static n()Z
    .registers 1

    .prologue
    .line 457
    invoke-static {}, Lorg/jshybugger/jk;->c()Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Lorg/jshybugger/iz;->k:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 271
    const-string v0, "[\\.]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 272
    aget-object v0, v1, v4

    invoke-direct {p0, v0}, Lorg/jshybugger/iz;->c(Ljava/lang/String;)Lorg/jshybugger/iS;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_17

    .line 274
    aget-object v1, v1, v2

    invoke-direct {p0, p2, v1, v0}, Lorg/jshybugger/iz;->a(Lorg/jshybugger/hQ;Ljava/lang/String;Lorg/jshybugger/iS;)Lorg/jshybugger/hQ;

    move-result-object v0

    .line 282
    :goto_16
    return-object v0

    .line 275
    :cond_17
    array-length v0, v1

    if-ne v0, v2, :cond_36

    .line 276
    iget-object v0, p0, Lorg/jshybugger/iz;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/iS;

    .line 277
    aget-object v3, v1, v4

    invoke-direct {p0, p2, v3, v0}, Lorg/jshybugger/iz;->a(Lorg/jshybugger/hQ;Ljava/lang/String;Lorg/jshybugger/iS;)Lorg/jshybugger/hQ;

    goto :goto_24

    .line 280
    :cond_36
    const-string v0, "DebugServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMessage no handler found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_4a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 362
    iput-object p1, p0, Lorg/jshybugger/iz;->f:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public final a(Lorg/jshybugger/ii;)V
    .registers 2

    .prologue
    .line 145
    invoke-interface {p1, p0}, Lorg/jshybugger/ii;->a(Lorg/jshybugger/iz;)V

    .line 146
    iput-object p1, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    .line 147
    return-void
.end method

.method public final a(Lorg/jshybugger/jn;)V
    .registers 6

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    if-nez v0, :cond_f

    .line 173
    const-string v0, "DebugServer"

    const-string v1, "Connection request rejected, no available WebView for debugging!"

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lorg/jshybugger/jn;->a()V

    .line 206
    :goto_e
    return-void

    .line 177
    :cond_f
    invoke-virtual {p0}, Lorg/jshybugger/iz;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 178
    const-string v0, "DebugServer"

    const-string v1, "Connection request rejected, active debug session found!"

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lorg/jshybugger/jn;->a()V

    goto :goto_e

    .line 183
    :cond_20
    sget-wide v0, Lorg/jshybugger/iz;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_43

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/jshybugger/iz;->i:J

    .line 185
    invoke-static {}, Lorg/jshybugger/DebugService;->getInstance()Lorg/jshybugger/DebugService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/DebugService;->getDebugServer()Lorg/jshybugger/iq;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jshybugger/iy;

    invoke-direct {v2, v0}, Lorg/jshybugger/iy;-><init>(Lorg/jshybugger/iq;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 188
    :cond_43
    const-string v0, "DebugServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/jshybugger/jn;->a:Lorg/jshybugger/dt;

    invoke-static {v2}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entered the debugger space!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lorg/jshybugger/iz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :try_start_66
    const-string v0, "GlobalClientConnected"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/iz;->a(Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    :try_end_6c
    .catch Lorg/jshybugger/hP; {:try_start_66 .. :try_end_6c} :catch_83

    .line 198
    :goto_6c
    :try_start_6c
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    const-string v1, "ClientConnected"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V
    :try_end_79
    .catch Lorg/jshybugger/hP; {:try_start_6c .. :try_end_79} :catch_7a

    goto :goto_e

    .line 202
    :catch_7a
    move-exception v0

    .line 203
    const-string v1, "DebugServer"

    const-string v2, "Notify ClientConnected failed"

    invoke-static {v1, v2, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_e

    .line 193
    :catch_83
    move-exception v0

    .line 194
    const-string v1, "DebugServer"

    const-string v2, "Notify GlobalClientConnected failed"

    invoke-static {v1, v2, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6c
.end method

.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 239
    :try_start_0
    invoke-static {p2}, Lorg/jshybugger/jg;->b(Ljava/lang/String;)V

    .line 240
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0, p2}, Lorg/jshybugger/hQ;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\.]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 243
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lorg/jshybugger/iz;->c(Ljava/lang/String;)Lorg/jshybugger/iS;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_24

    .line 246
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v2, p1, v1, v0}, Lorg/jshybugger/iS;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    .line 261
    :goto_23
    return-void

    .line 249
    :cond_24
    new-instance v1, Lorg/jshybugger/hT;

    invoke-direct {v1}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v1}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method"

    invoke-virtual {v0, v3}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-wide/16 v2, -0x7d00

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V
    :try_end_86
    .catch Lorg/jshybugger/hP; {:try_start_0 .. :try_end_86} :catch_87

    goto :goto_23

    .line 258
    :catch_87
    move-exception v0

    .line 259
    invoke-virtual {v0}, Lorg/jshybugger/hP;->printStackTrace()V

    goto :goto_23
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/jshybugger/iz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final b()Lorg/jshybugger/ii;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 376
    iput-object p1, p0, Lorg/jshybugger/iz;->g:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 5

    .prologue
    .line 286
    iget-object v0, p0, Lorg/jshybugger/iz;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/jshybugger/iA;

    invoke-direct {v1, p0, p1, p2}, Lorg/jshybugger/iA;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public final b(Lorg/jshybugger/jn;)V
    .registers 6

    .prologue
    .line 213
    iget-object v0, p0, Lorg/jshybugger/iz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 214
    const-string v0, "DebugServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has left the debugger space!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_20
    const-string v0, "GlobalClientDisconnected"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/iz;->a(Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    :try_end_26
    .catch Lorg/jshybugger/hP; {:try_start_20 .. :try_end_26} :catch_34

    .line 223
    :goto_26
    :try_start_26
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    const-string v1, "ClientDisconnected"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V
    :try_end_33
    .catch Lorg/jshybugger/hP; {:try_start_26 .. :try_end_33} :catch_3d

    .line 231
    :cond_33
    :goto_33
    return-void

    .line 218
    :catch_34
    move-exception v0

    .line 219
    const-string v1, "DebugServer"

    const-string v2, "Notify GlobalClientDisconnected failed"

    invoke-static {v1, v2, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_26

    .line 227
    :catch_3d
    move-exception v0

    .line 228
    const-string v1, "DebugServer"

    const-string v2, "Notify ClientDisconnected failed"

    invoke-static {v1, v2, v0}, Lorg/jshybugger/jf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_33
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/jshybugger/iz;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lorg/jshybugger/iz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/jshybugger/iz;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .registers 3

    .prologue
    .line 383
    iget-wide v0, p0, Lorg/jshybugger/iz;->h:J

    return-wide v0
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jshybugger/iz;->h:J

    .line 391
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    if-eqz v0, :cond_6

    .line 398
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    .line 400
    :cond_6
    iget-object v0, p0, Lorg/jshybugger/iz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/jn;

    .line 401
    invoke-virtual {v0}, Lorg/jshybugger/jn;->a()V

    goto :goto_c

    .line 403
    :cond_1c
    iget-object v0, p0, Lorg/jshybugger/iz;->l:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_25

    .line 404
    iget-object v0, p0, Lorg/jshybugger/iz;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 406
    :cond_25
    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 5

    .prologue
    .line 409
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    if-eqz v0, :cond_5a

    .line 410
    iget-object v0, p0, Lorg/jshybugger/iz;->d:Lorg/jshybugger/ii;

    invoke-interface {v0}, Lorg/jshybugger/ii;->b()Ljava/util/Map;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_5a

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    const/4 v0, 0x1

    .line 414
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    if-nez v1, :cond_33

    .line 417
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_33
    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, "\":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    const/4 v0, 0x0

    move v1, v0

    goto :goto_20

    .line 426
    :cond_50
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_59
    return-object v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_59
.end method
