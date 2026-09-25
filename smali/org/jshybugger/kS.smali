.class final Lorg/jshybugger/ks;
.super Ljava/lang/Object;
.source "ProxyToServerConnection.java"

# interfaces
.implements Lorg/jshybugger/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jshybugger/z",
        "<",
        "Lorg/jshybugger/aj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/jshybugger/kr;)V
    .registers 2

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/jshybugger/aj;
    .registers 2

    .prologue
    .line 516
    new-instance v0, Lorg/jshybugger/cw;

    invoke-direct {v0}, Lorg/jshybugger/cw;-><init>()V

    return-object v0
.end method
