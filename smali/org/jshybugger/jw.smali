.class final Lorg/jshybugger/jW;
.super Ljava/lang/Object;
.source "DefaultHttpProxyServer.java"

# interfaces
.implements Lorg/jshybugger/ap;


# instance fields
.field private synthetic c:Lorg/jshybugger/jT;


# direct methods
.method constructor <init>(Lorg/jshybugger/jT;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lorg/jshybugger/jW;->c:Lorg/jshybugger/jT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/jshybugger/fN;)V
    .registers 4

    .prologue
    .line 310
    check-cast p1, Lorg/jshybugger/ao;

    iget-object v0, p0, Lorg/jshybugger/jW;->c:Lorg/jshybugger/jT;

    invoke-interface {p1}, Lorg/jshybugger/ao;->d()Lorg/jshybugger/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/jT;->a(Lorg/jshybugger/aj;)V

    return-void
.end method
