.class public abstract Lorg/jshybugger/nz;
.super Lorg/jshybugger/mt;
.source "XmlFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 18
    const/16 v0, 0x91

    iput v0, p0, Lorg/jshybugger/nz;->a:I

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/jshybugger/mt;-><init>(I)V

    .line 18
    const/16 v0, 0x91

    iput v0, p0, Lorg/jshybugger/nz;->a:I

    .line 26
    return-void
.end method
