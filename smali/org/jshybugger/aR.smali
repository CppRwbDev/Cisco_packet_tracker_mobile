.class final Lorg/jshybugger/ar;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Lorg/jshybugger/ap;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/jshybugger/fN;)V
    .registers 3

    .prologue
    .line 52
    check-cast p1, Lorg/jshybugger/ao;

    invoke-interface {p1}, Lorg/jshybugger/ao;->d_()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1}, Lorg/jshybugger/ao;->d()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->h()Lorg/jshybugger/ao;

    :cond_f
    return-void
.end method
