.class final Lorg/jshybugger/kw;
.super Ljava/lang/Object;
.source "ProxyToServerConnection.java"

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
        "Lorg/jshybugger/aj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/jshybugger/kv;


# direct methods
.method constructor <init>(Lorg/jshybugger/kv;)V
    .registers 2

    .prologue
    .line 602
    iput-object p1, p0, Lorg/jshybugger/kw;->a:Lorg/jshybugger/kv;

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
            "Lorg/jshybugger/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    invoke-interface {p1}, Lorg/jshybugger/fN;->d_()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 608
    iget-object v0, p0, Lorg/jshybugger/kw;->a:Lorg/jshybugger/kv;

    iget-object v0, v0, Lorg/jshybugger/kv;->c:Lorg/jshybugger/kq;

    invoke-static {v0}, Lorg/jshybugger/kq;->h(Lorg/jshybugger/kq;)Lorg/jshybugger/jG;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jshybugger/jG;->a(Z)V

    .line 610
    :cond_12
    return-void
.end method
