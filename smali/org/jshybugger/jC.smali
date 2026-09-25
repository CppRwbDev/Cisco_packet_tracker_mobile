.class public final Lorg/jshybugger/jc;
.super Lorg/jshybugger/ig;
.source "TimelineMsgHandler.java"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 3

    .prologue
    .line 38
    const-string v0, "Timeline"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 5

    .prologue
    .line 47
    const-string v0, "start"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/jc;->b:Z

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/jc;->c(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    .line 58
    :goto_e
    return-void

    .line 51
    :cond_f
    const-string v0, "stop"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/jc;->b:Z

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/jc;->c(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_e

    .line 56
    :cond_1e
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_e
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v0, "GlobalInitHybugger"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 68
    iget-boolean v0, p0, Lorg/jshybugger/jc;->b:Z

    if-eqz v0, :cond_1d

    .line 69
    iget-object v0, p0, Lorg/jshybugger/jc;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Timeline.start"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 74
    :cond_1d
    :goto_1d
    return-object v3

    .line 72
    :cond_1e
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    goto :goto_1d
.end method
