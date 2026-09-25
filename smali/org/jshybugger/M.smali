.class public final Lorg/jshybugger/m;
.super Lorg/jshybugger/r;
.source "Inflater.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/jshybugger/r;-><init>()V

    .line 91
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jshybugger/m;->a(IZ)I

    .line 63
    return-void
.end method


# virtual methods
.method public final a(IZ)I
    .registers 4

    .prologue
    .line 126
    new-instance v0, Lorg/jshybugger/k;

    invoke-direct {v0, p0}, Lorg/jshybugger/k;-><init>(Lorg/jshybugger/r;)V

    iput-object v0, p0, Lorg/jshybugger/m;->k:Lorg/jshybugger/k;

    .line 128
    iget-object v0, p0, Lorg/jshybugger/m;->k:Lorg/jshybugger/k;

    if-eqz p2, :cond_c

    neg-int p1, p1

    :cond_c
    invoke-virtual {v0, p1}, Lorg/jshybugger/k;->a(I)I

    move-result v0

    return v0
.end method
