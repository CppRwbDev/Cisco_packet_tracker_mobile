.class public final Lorg/jshybugger/hw;
.super Lorg/jshybugger/hz;
.source "Base64OutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/hw;-><init>(Ljava/io/OutputStream;Z)V

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5

    .prologue
    .line 65
    new-instance v0, Lorg/jshybugger/hv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/hv;-><init>(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jshybugger/hz;-><init>(Ljava/io/OutputStream;Lorg/jshybugger/hx;Z)V

    .line 66
    return-void
.end method
