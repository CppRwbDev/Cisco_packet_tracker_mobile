.class public final Lorg/jshybugger/f;
.super Lorg/jshybugger/r;
.source "Deflater.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/jshybugger/r;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jshybugger/f;->j:Lorg/jshybugger/d;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, -0x2

    .line 141
    :goto_5
    return v0

    .line 140
    :cond_6
    iget-object v0, p0, Lorg/jshybugger/f;->j:Lorg/jshybugger/d;

    invoke-virtual {v0, p1}, Lorg/jshybugger/d;->b(I)I

    move-result v0

    goto :goto_5
.end method
