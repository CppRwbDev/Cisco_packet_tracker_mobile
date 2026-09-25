.class public final Lorg/jshybugger/ek;
.super Lorg/jshybugger/ey;
.source "PongWebSocketFrame.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jshybugger/S;->a(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/ey;-><init>(Lorg/jshybugger/H;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/H;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/jshybugger/ey;-><init>(Lorg/jshybugger/H;)V

    .line 41
    return-void
.end method

.method public constructor <init>(ZILorg/jshybugger/H;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/jshybugger/ey;-><init>(ZILorg/jshybugger/H;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final synthetic b()Lorg/jshybugger/J;
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    return-object p0
.end method

.method public final bridge synthetic c()Lorg/jshybugger/ey;
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    return-object p0
.end method

.method public final synthetic w()Lorg/jshybugger/fp;
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    return-object p0
.end method
