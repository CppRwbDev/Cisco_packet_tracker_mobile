.class public final Lorg/jshybugger/ip;
.super Lorg/jshybugger/ig;
.source "DatabaseMsgHandler.java"


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 3

    .prologue
    .line 10
    const-string v0, "Database"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 8

    .prologue
    .line 18
    const-string v0, "enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 19
    invoke-static {p1, p3}, Lorg/jshybugger/ip;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    .line 21
    iget-object v0, p0, Lorg/jshybugger/ip;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Database.enable"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 27
    :goto_1c
    return-void

    .line 25
    :cond_1d
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_1c
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 7

    .prologue
    .line 37
    const-string v0, "addDatabase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 38
    const-string v0, "Database.addDatabase"

    if-eqz p1, :cond_34

    new-instance v1, Lorg/jshybugger/hT;

    invoke-direct {v1}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v1}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 43
    :cond_34
    :goto_34
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_36
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    goto :goto_34
.end method
