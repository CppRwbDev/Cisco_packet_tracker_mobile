.class final Lorg/jshybugger/aq;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Lorg/jshybugger/ap;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/jshybugger/fN;)V
    .registers 3

    .prologue
    .line 41
    check-cast p1, Lorg/jshybugger/ao;

    invoke-interface {p1}, Lorg/jshybugger/ao;->d()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->h()Lorg/jshybugger/ao;

    return-void
.end method
