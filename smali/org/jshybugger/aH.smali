.class final Lorg/jshybugger/ah;
.super Lorg/jshybugger/bs;
.source "AbstractChannel.java"


# direct methods
.method constructor <init>(Lorg/jshybugger/Y;)V
    .registers 2

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lorg/jshybugger/bs;-><init>(Lorg/jshybugger/aj;)V

    .line 804
    return-void
.end method


# virtual methods
.method public final a()Lorg/jshybugger/aM;
    .registers 2

    .prologue
    .line 808
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)Lorg/jshybugger/aM;
    .registers 3

    .prologue
    .line 813
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a_()Z
    .registers 2

    .prologue
    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .registers 3

    .prologue
    .line 823
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final b_()Z
    .registers 2

    .prologue
    .line 827
    invoke-super {p0}, Lorg/jshybugger/bs;->a_()Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;
    .registers 3

    .prologue
    .line 800
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
