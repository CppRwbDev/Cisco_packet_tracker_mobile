.class public final Lorg/jshybugger/el;
.super Lorg/jshybugger/ey;
.source "TextWebSocketFrame.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jshybugger/S;->a(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/ey;-><init>(Lorg/jshybugger/H;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_8
    sget-object v0, Lorg/jshybugger/S;->a:Lorg/jshybugger/H;

    :goto_a
    invoke-direct {p0, v0}, Lorg/jshybugger/ey;-><init>(Lorg/jshybugger/H;)V

    .line 42
    return-void

    .line 41
    :cond_e
    sget-object v0, Lorg/jshybugger/fe;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/jshybugger/S;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jshybugger/H;

    move-result-object v0

    goto :goto_a
.end method

.method public constructor <init>(Lorg/jshybugger/H;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/jshybugger/ey;-><init>(Lorg/jshybugger/H;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ZILorg/jshybugger/H;)V
    .registers 4

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lorg/jshybugger/ey;-><init>(ZILorg/jshybugger/H;)V

    .line 88
    return-void
.end method


# virtual methods
.method public final synthetic b()Lorg/jshybugger/J;
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    return-object p0
.end method

.method public final bridge synthetic c()Lorg/jshybugger/ey;
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    return-object p0
.end method

.method public final synthetic w()Lorg/jshybugger/fp;
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    return-object p0
.end method
