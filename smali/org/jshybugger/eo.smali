.class final Lorg/jshybugger/eO;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lorg/jshybugger/fO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jshybugger/fO",
        "<",
        "Lorg/jshybugger/fN",
        "<",
        "Lorg/jshybugger/aj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/jshybugger/aw;


# direct methods
.method constructor <init>(Lorg/jshybugger/eL;Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 1026
    iput-object p2, p0, Lorg/jshybugger/eO;->a:Lorg/jshybugger/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/fN;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fN",
            "<",
            "Lorg/jshybugger/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1029
    invoke-interface {p1}, Lorg/jshybugger/fN;->d_()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1030
    invoke-static {}, Lorg/jshybugger/eL;->d()Lorg/jshybugger/gX;

    move-result-object v0

    const-string v1, "Failed to complete handshake"

    invoke-interface {p1}, Lorg/jshybugger/fN;->h()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/gX;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1031
    iget-object v0, p0, Lorg/jshybugger/eO;->a:Lorg/jshybugger/aw;

    invoke-interface {v0}, Lorg/jshybugger/aw;->h()Lorg/jshybugger/ao;

    .line 1033
    :cond_18
    return-void
.end method
