.class final Lorg/jshybugger/cp;
.super Ljava/util/AbstractSet;
.source "SelectedSelectionKeySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/nio/channels/SelectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/nio/channels/SelectionKey;

.field private b:I

.field private c:[Ljava/nio/channels/SelectionKey;

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/cp;->e:Z

    .line 32
    const/16 v0, 0x400

    new-array v0, v0, [Ljava/nio/channels/SelectionKey;

    iput-object v0, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    .line 33
    iget-object v0, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, [Ljava/nio/channels/SelectionKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/channels/SelectionKey;

    iput-object v0, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    .line 34
    return-void
.end method


# virtual methods
.method final a()[Ljava/nio/channels/SelectionKey;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    iget-boolean v0, p0, Lorg/jshybugger/cp;->e:Z

    if-eqz v0, :cond_13

    .line 75
    iput-boolean v2, p0, Lorg/jshybugger/cp;->e:Z

    .line 76
    iget-object v0, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/jshybugger/cp;->b:I

    aput-object v3, v0, v1

    .line 77
    iput v2, p0, Lorg/jshybugger/cp;->d:I

    .line 78
    iget-object v0, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    .line 83
    :goto_12
    return-object v0

    .line 80
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/cp;->e:Z

    .line 81
    iget-object v0, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/jshybugger/cp;->d:I

    aput-object v3, v0, v1

    .line 82
    iput v2, p0, Lorg/jshybugger/cp;->b:I

    .line 83
    iget-object v0, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    goto :goto_12
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 23
    check-cast p1, Ljava/nio/channels/SelectionKey;

    if-nez p1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Lorg/jshybugger/cp;->e:Z

    if-eqz v1, :cond_2b

    iget v1, p0, Lorg/jshybugger/cp;->b:I

    iget-object v2, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    add-int/lit8 v3, v1, 0x1

    aput-object p1, v2, v1

    iput v3, p0, Lorg/jshybugger/cp;->b:I

    iget-object v1, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ne v3, v1, :cond_29

    iget-object v1, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/nio/channels/SelectionKey;

    iget-object v2, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    iget v3, p0, Lorg/jshybugger/cp;->b:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/jshybugger/cp;->a:[Ljava/nio/channels/SelectionKey;

    :cond_29
    :goto_29
    const/4 v0, 0x1

    goto :goto_5

    :cond_2b
    iget v1, p0, Lorg/jshybugger/cp;->d:I

    iget-object v2, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    add-int/lit8 v3, v1, 0x1

    aput-object p1, v2, v1

    iput v3, p0, Lorg/jshybugger/cp;->d:I

    iget-object v1, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ne v3, v1, :cond_29

    iget-object v1, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/nio/channels/SelectionKey;

    iget-object v2, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    iget v3, p0, Lorg/jshybugger/cp;->d:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/jshybugger/cp;->c:[Ljava/nio/channels/SelectionKey;

    goto :goto_29
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/jshybugger/cp;->e:Z

    if-eqz v0, :cond_7

    .line 90
    iget v0, p0, Lorg/jshybugger/cp;->b:I

    .line 92
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lorg/jshybugger/cp;->d:I

    goto :goto_6
.end method
