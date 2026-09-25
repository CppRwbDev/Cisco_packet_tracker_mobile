.class final Lorg/jshybugger/eN;
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
.field private synthetic a:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Lorg/jshybugger/eL;Ljava/util/concurrent/ScheduledFuture;)V
    .registers 3

    .prologue
    .line 1001
    iput-object p2, p0, Lorg/jshybugger/eN;->a:Ljava/util/concurrent/ScheduledFuture;

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
            "<",
            "Lorg/jshybugger/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/jshybugger/eN;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    .line 1005
    iget-object v0, p0, Lorg/jshybugger/eN;->a:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1007
    :cond_a
    return-void
.end method
