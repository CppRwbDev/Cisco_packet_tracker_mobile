.class final Lorg/jshybugger/ka;
.super Ljava/lang/Object;
.source "DefaultHttpProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jshybugger/jY;


# direct methods
.method constructor <init>(Lorg/jshybugger/jY;)V
    .registers 2

    .prologue
    .line 420
    iput-object p1, p0, Lorg/jshybugger/ka;->a:Lorg/jshybugger/jY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/jshybugger/ka;->a:Lorg/jshybugger/jY;

    invoke-virtual {v0}, Lorg/jshybugger/jY;->a()V

    .line 423
    return-void
.end method
