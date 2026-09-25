.class final Lorg/jshybugger/as;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Lorg/jshybugger/ap;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/jshybugger/fN;)V
    .registers 4

    .prologue
    .line 65
    check-cast p1, Lorg/jshybugger/ao;

    invoke-interface {p1}, Lorg/jshybugger/ao;->d_()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-interface {p1}, Lorg/jshybugger/ao;->d()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    invoke-interface {p1}, Lorg/jshybugger/ao;->h()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/aJ;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;

    :cond_17
    return-void
.end method
