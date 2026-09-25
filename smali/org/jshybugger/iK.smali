.class public final Lorg/jshybugger/ik;
.super Lorg/jshybugger/ig;
.source "CssMsgHandler.java"


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 3

    .prologue
    .line 10
    const-string v0, "CSS"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 5

    .prologue
    .line 19
    const-string v0, "enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 20
    invoke-static {p1, p3}, Lorg/jshybugger/ik;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    .line 34
    :goto_b
    return-void

    .line 22
    :cond_c
    const-string v0, "addRule"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 24
    const-string v0, "Adding inspector rule not supported."

    invoke-static {p1, p3, v0}, Lorg/jshybugger/ik;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;Ljava/lang/String;)V

    goto :goto_b

    .line 26
    :cond_1a
    const-string v0, "forcePseudoState"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 28
    const-string v0, "Forcing element pseudo state not supported."

    invoke-static {p1, p3, v0}, Lorg/jshybugger/ik;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;Ljava/lang/String;)V

    goto :goto_b

    .line 32
    :cond_28
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_b
.end method
