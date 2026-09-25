.class final Lorg/jshybugger/kh;
.super Ljava/lang/Object;
.source "ProxyConnection.java"

# interfaces
.implements Lorg/jshybugger/fO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jshybugger/fO",
        "<",
        "Lorg/jshybugger/fN",
        "<-",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/jshybugger/fZ;


# direct methods
.method constructor <init>(Lorg/jshybugger/kd;Lorg/jshybugger/fZ;)V
    .registers 3

    .prologue
    .line 471
    iput-object p2, p0, Lorg/jshybugger/kh;->a:Lorg/jshybugger/fZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/fN;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fN",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    invoke-interface {p1}, Lorg/jshybugger/fN;->d_()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 477
    iget-object v0, p0, Lorg/jshybugger/kh;->a:Lorg/jshybugger/fZ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jshybugger/fZ;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    .line 482
    :goto_c
    return-void

    .line 479
    :cond_d
    iget-object v0, p0, Lorg/jshybugger/kh;->a:Lorg/jshybugger/fZ;

    invoke-interface {p1}, Lorg/jshybugger/fN;->h()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/fZ;->c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;

    goto :goto_c
.end method
