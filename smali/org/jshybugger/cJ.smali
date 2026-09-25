.class public abstract Lorg/jshybugger/cj;
.super Lorg/jshybugger/ce;
.source "AbstractNioMessageChannel.java"


# direct methods
.method public constructor <init>(Lorg/jshybugger/aj;Ljava/nio/channels/SelectableChannel;I)V
    .registers 6

    .prologue
    .line 39
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, p2, v1}, Lorg/jshybugger/ce;-><init>(Lorg/jshybugger/aj;Ljava/nio/channels/SelectableChannel;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected abstract E()Z
.end method

.method protected abstract a(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method protected final a(Lorg/jshybugger/aC;)V
    .registers 7

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/jshybugger/cj;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    .line 122
    :goto_8
    invoke-virtual {p1}, Lorg/jshybugger/aC;->b()Ljava/lang/Object;

    move-result-object v0

    .line 123
    if-nez v0, :cond_18

    .line 125
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_17

    .line 126
    and-int/lit8 v0, v3, -0x5

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 148
    :cond_17
    :goto_17
    return-void

    .line 131
    :cond_18
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Lorg/jshybugger/cj;->A()Lorg/jshybugger/al;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/al;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_23
    if-ltz v1, :cond_2c

    .line 133
    invoke-virtual {p0}, Lorg/jshybugger/cj;->E()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 134
    const/4 v0, 0x1

    .line 139
    :cond_2c
    if-eqz v0, :cond_35

    .line 140
    invoke-virtual {p1}, Lorg/jshybugger/aC;->c()Z

    goto :goto_8

    .line 132
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 143
    :cond_35
    and-int/lit8 v0, v3, 0x4

    if-nez v0, :cond_17

    .line 144
    or-int/lit8 v0, v3, 0x4

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_17
.end method

.method protected final synthetic o()Lorg/jshybugger/Z;
    .registers 3

    .prologue
    .line 33
    new-instance v0, Lorg/jshybugger/ck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/ck;-><init>(Lorg/jshybugger/cj;B)V

    return-object v0
.end method
