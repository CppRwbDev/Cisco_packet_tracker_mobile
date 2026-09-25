.class final Lorg/jshybugger/jU;
.super Lorg/jshybugger/az;
.source "DefaultHttpProxyServer.java"


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
.field private synthetic b:Lorg/jshybugger/jT;


# direct methods
.method constructor <init>(Lorg/jshybugger/jT;)V
    .registers 2

    .prologue
    .line 287
    iput-object p1, p0, Lorg/jshybugger/jU;->b:Lorg/jshybugger/jT;

    invoke-direct {p0}, Lorg/jshybugger/az;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jshybugger/aj;)V
    .registers 7

    .prologue
    .line 289
    new-instance v0, Lorg/jshybugger/jG;

    iget-object v1, p0, Lorg/jshybugger/jU;->b:Lorg/jshybugger/jT;

    iget-object v2, p0, Lorg/jshybugger/jU;->b:Lorg/jshybugger/jT;

    invoke-static {v2}, Lorg/jshybugger/jT;->a(Lorg/jshybugger/jT;)Lorg/jshybugger/jD;

    move-result-object v2

    iget-object v3, p0, Lorg/jshybugger/jU;->b:Lorg/jshybugger/jT;

    invoke-static {v3}, Lorg/jshybugger/jT;->b(Lorg/jshybugger/jT;)Z

    move-result v3

    invoke-interface {p1}, Lorg/jshybugger/aj;->b()Lorg/jshybugger/aJ;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jshybugger/jG;-><init>(Lorg/jshybugger/jT;Lorg/jshybugger/jD;ZLorg/jshybugger/aJ;)V

    .line 294
    return-void
.end method
