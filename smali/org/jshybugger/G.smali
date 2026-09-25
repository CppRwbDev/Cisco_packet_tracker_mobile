.class public final Lorg/jshybugger/g;
.super Ljava/lang/Object;
.source "GZIPHeader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:I

.field b:[B

.field c:[B

.field d:[B

.field private e:Z

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lorg/jshybugger/g;->e:Z

    .line 61
    iput-boolean v0, p0, Lorg/jshybugger/g;->f:Z

    .line 64
    const/16 v0, 0xff

    iput v0, p0, Lorg/jshybugger/g;->a:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jshybugger/g;->g:J

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/g;

    .line 194
    iget-object v1, v0, Lorg/jshybugger/g;->b:[B

    if-eqz v1, :cond_18

    .line 195
    iget-object v1, v0, Lorg/jshybugger/g;->b:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 196
    iget-object v2, v0, Lorg/jshybugger/g;->b:[B

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iput-object v1, v0, Lorg/jshybugger/g;->b:[B

    .line 200
    :cond_18
    iget-object v1, v0, Lorg/jshybugger/g;->c:[B

    if-eqz v1, :cond_29

    .line 201
    iget-object v1, v0, Lorg/jshybugger/g;->c:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 202
    iget-object v2, v0, Lorg/jshybugger/g;->c:[B

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iput-object v1, v0, Lorg/jshybugger/g;->c:[B

    .line 206
    :cond_29
    iget-object v1, v0, Lorg/jshybugger/g;->d:[B

    if-eqz v1, :cond_3a

    .line 207
    iget-object v1, v0, Lorg/jshybugger/g;->d:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 208
    iget-object v2, v0, Lorg/jshybugger/g;->d:[B

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v1, v0, Lorg/jshybugger/g;->d:[B

    .line 212
    :cond_3a
    return-object v0
.end method
