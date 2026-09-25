.class public final Lorg/jshybugger/jp;
.super Lorg/jshybugger/az;
.source "WebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/az",
        "<",
        "Lorg/jshybugger/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic b:Lorg/jshybugger/jo;


# direct methods
.method public constructor <init>(Lorg/jshybugger/jo;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jshybugger/jp;->b:Lorg/jshybugger/jo;

    invoke-direct {p0}, Lorg/jshybugger/az;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/jshybugger/aj;)V
    .registers 8

    .prologue
    .line 89
    check-cast p1, Lorg/jshybugger/aj;

    invoke-interface {p1}, Lorg/jshybugger/aj;->b()Lorg/jshybugger/aJ;

    move-result-object v0

    const-string v1, "codec-http"

    new-instance v2, Lorg/jshybugger/eb;

    iget-object v3, p0, Lorg/jshybugger/jp;->b:Lorg/jshybugger/jo;

    iget v3, v3, Lorg/jshybugger/jo;->a:I

    iget-object v4, p0, Lorg/jshybugger/jp;->b:Lorg/jshybugger/jo;

    iget v4, v4, Lorg/jshybugger/jo;->b:I

    iget-object v5, p0, Lorg/jshybugger/jp;->b:Lorg/jshybugger/jo;

    iget v5, v5, Lorg/jshybugger/jo;->c:I

    invoke-direct {v2, v3, v4, v5}, Lorg/jshybugger/eb;-><init>(III)V

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    const-string v1, "aggregator"

    new-instance v2, Lorg/jshybugger/dO;

    iget-object v3, p0, Lorg/jshybugger/jp;->b:Lorg/jshybugger/jo;

    iget v3, v3, Lorg/jshybugger/jo;->d:I

    invoke-direct {v2, v3}, Lorg/jshybugger/dO;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    iget-object v1, p0, Lorg/jshybugger/jp;->b:Lorg/jshybugger/jo;

    invoke-virtual {v1, v0}, Lorg/jshybugger/jo;->a(Lorg/jshybugger/aJ;)V

    return-void
.end method
