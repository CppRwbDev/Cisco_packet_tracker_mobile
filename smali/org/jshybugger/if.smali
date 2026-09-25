.class final Lorg/jshybugger/iF;
.super Ljava/lang/Object;
.source "DebuggerMsgHandler.java"

# interfaces
.implements Lorg/jshybugger/ja;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lorg/jshybugger/iG;

.field private synthetic c:I

.field private synthetic d:Z

.field private synthetic e:I

.field private synthetic f:Lorg/jshybugger/jn;

.field private synthetic g:Lorg/jshybugger/iC;


# direct methods
.method constructor <init>(Lorg/jshybugger/iC;Ljava/lang/String;Lorg/jshybugger/iG;IZILorg/jshybugger/jn;)V
    .registers 8

    .prologue
    .line 421
    iput-object p1, p0, Lorg/jshybugger/iF;->g:Lorg/jshybugger/iC;

    iput-object p2, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/jshybugger/iF;->b:Lorg/jshybugger/iG;

    iput p4, p0, Lorg/jshybugger/iF;->c:I

    iput-boolean p5, p0, Lorg/jshybugger/iF;->d:Z

    iput p6, p0, Lorg/jshybugger/iF;->e:I

    iput-object p7, p0, Lorg/jshybugger/iF;->f:Lorg/jshybugger/jn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/hQ;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 428
    iget-object v0, p0, Lorg/jshybugger/iF;->g:Lorg/jshybugger/iC;

    invoke-static {v0}, Lorg/jshybugger/iC;->a(Lorg/jshybugger/iC;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 429
    if-nez v0, :cond_22

    .line 430
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 431
    iget-object v1, p0, Lorg/jshybugger/iF;->g:Lorg/jshybugger/iC;

    invoke-static {v1}, Lorg/jshybugger/iC;->a(Lorg/jshybugger/iC;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_22
    iget-object v1, p0, Lorg/jshybugger/iF;->b:Lorg/jshybugger/iG;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    iget v1, p0, Lorg/jshybugger/iF;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "breakpointId"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "breakpointId"

    invoke-virtual {p1, v1}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    .line 440
    iget-boolean v1, p0, Lorg/jshybugger/iF;->d:Z

    if-eqz v1, :cond_ab

    .line 441
    const-string v1, "actualLocation"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "scriptId"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    iget v2, p0, Lorg/jshybugger/iF;->e:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "columnNumber"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    .line 456
    :goto_8b
    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    iget-object v0, p0, Lorg/jshybugger/iF;->g:Lorg/jshybugger/iC;

    invoke-static {v0}, Lorg/jshybugger/iC;->b(Lorg/jshybugger/iC;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 462
    iget-object v0, p0, Lorg/jshybugger/iF;->f:Lorg/jshybugger/jn;

    invoke-virtual {v0, v1}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 471
    :goto_aa
    return-void

    .line 447
    :cond_ab
    const-string v1, "locations"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->a()Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "scriptId"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    iget v2, p0, Lorg/jshybugger/iF;->e:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "columnNumber"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->b()Lorg/jshybugger/hV;

    goto :goto_8b

    .line 464
    :cond_e4
    iget-object v0, p0, Lorg/jshybugger/iF;->g:Lorg/jshybugger/iC;

    invoke-static {v0}, Lorg/jshybugger/iC;->c(Lorg/jshybugger/iC;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 465
    if-nez v0, :cond_104

    .line 466
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 467
    iget-object v2, p0, Lorg/jshybugger/iF;->g:Lorg/jshybugger/iC;

    invoke-static {v2}, Lorg/jshybugger/iC;->c(Lorg/jshybugger/iC;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/jshybugger/iF;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_aa
.end method
