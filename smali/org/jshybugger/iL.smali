.class public final Lorg/jshybugger/il;
.super Lorg/jshybugger/ig;
.source "DOMDebuggerMsgHandler.java"


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 3

    .prologue
    .line 36
    const-string v0, "DOMDebugger"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 4

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    .line 46
    return-void
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 5

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    move-result-object v0

    return-object v0
.end method
