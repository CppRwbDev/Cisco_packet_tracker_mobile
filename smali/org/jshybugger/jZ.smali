.class public Lorg/jshybugger/jz;
.super Ljava/lang/Object;
.source "HttpFiltersSource.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lorg/jshybugger/dU;Lorg/jshybugger/aw;)Lorg/jshybugger/jx;
    .registers 4

    .prologue
    .line 18
    new-instance v0, Lorg/jshybugger/jy;

    invoke-direct {v0, p1, p2}, Lorg/jshybugger/jy;-><init>(Lorg/jshybugger/dU;Lorg/jshybugger/aw;)V

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
