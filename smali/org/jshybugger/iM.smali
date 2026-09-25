.class public final Lorg/jshybugger/im;
.super Lorg/jshybugger/ig;
.source "DOMMsgHandler.java"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 3

    .prologue
    .line 13
    const-string v0, "DOM"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/im;->b:Z

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 9

    .prologue
    .line 23
    const-string v0, "getDocument"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/im;->b:Z

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/im;->c(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    .line 37
    :goto_e
    return-void

    .line 28
    :cond_f
    const-string v0, "requestChildNodes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 29
    iget-object v0, p0, Lorg/jshybugger/im;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "DOM.requestChildNodes"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "params"

    const-string v4, "params"

    invoke-virtual {p3, v4}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v2

    new-instance v3, Lorg/jshybugger/in;

    invoke-direct {v3, p0, p1, p3}, Lorg/jshybugger/in;-><init>(Lorg/jshybugger/im;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    goto :goto_e

    .line 31
    :cond_39
    const-string v0, "markUndoableState"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 32
    invoke-static {p1, p3}, Lorg/jshybugger/im;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto :goto_e

    .line 35
    :cond_45
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_e
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 6

    .prologue
    .line 46
    const-string v0, "GlobalPageLoaded"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 47
    iget-boolean v0, p0, Lorg/jshybugger/im;->b:Z

    if-eqz v0, :cond_2e

    .line 48
    if-eqz p1, :cond_2e

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "DOM.documentUpdated"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 53
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_30
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    goto :goto_2e
.end method
