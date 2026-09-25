.class final Lorg/jshybugger/is;
.super Lorg/jshybugger/jm;
.source "DebugServer.java"


# direct methods
.method constructor <init>(Lorg/jshybugger/iq;)V
    .registers 2

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/jshybugger/jm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/dt;)Lorg/jshybugger/du;
    .registers 5

    .prologue
    .line 136
    new-instance v0, Lorg/jshybugger/dh;

    sget-object v1, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v2, Lorg/jshybugger/ea;->i:Lorg/jshybugger/ea;

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 137
    return-object v0
.end method
