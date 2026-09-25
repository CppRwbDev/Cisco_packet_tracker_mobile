.class public abstract Lorg/jshybugger/cb;
.super Lorg/jshybugger/ce;
.source "AbstractNioByteChannel.java"


# instance fields
.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/jshybugger/aj;Ljava/nio/channels/SelectableChannel;)V
    .registers 4

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/ce;-><init>(Lorg/jshybugger/aj;Ljava/nio/channels/SelectableChannel;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final E()V
    .registers 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/jshybugger/cb;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 284
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_11

    .line 285
    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 287
    :cond_11
    return-void
.end method

.method protected abstract a(Lorg/jshybugger/H;)I
.end method

.method protected abstract a(Lorg/jshybugger/bx;)J
.end method

.method public a(Lorg/jshybugger/aC;)V
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 141
    move v1, v2

    .line 144
    :goto_6
    invoke-virtual {p1}, Lorg/jshybugger/aC;->b()Ljava/lang/Object;

    move-result-object v0

    .line 145
    if-nez v0, :cond_10

    .line 147
    invoke-virtual {p0}, Lorg/jshybugger/cb;->E()V

    .line 226
    :goto_f
    return-void

    .line 151
    :cond_10
    instance-of v4, v0, Lorg/jshybugger/H;

    if-eqz v4, :cond_5e

    .line 152
    check-cast v0, Lorg/jshybugger/H;

    .line 153
    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v4

    .line 154
    if-nez v4, :cond_20

    .line 155
    invoke-virtual {p1}, Lorg/jshybugger/aC;->c()Z

    goto :goto_6

    .line 159
    :cond_20
    invoke-virtual {v0}, Lorg/jshybugger/H;->B()Z

    move-result v4

    if-nez v4, :cond_29

    .line 160
    invoke-virtual {p0}, Lorg/jshybugger/cb;->c()Lorg/jshybugger/I;

    .line 173
    :cond_29
    if-ne v1, v2, :cond_33

    .line 174
    invoke-virtual {p0}, Lorg/jshybugger/cb;->A()Lorg/jshybugger/al;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/al;->c()I

    move-result v1

    .line 176
    :cond_33
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    move-wide v4, v8

    :goto_37
    if-ltz v7, :cond_bc

    .line 177
    invoke-virtual {p0, v0}, Lorg/jshybugger/cb;->b(Lorg/jshybugger/H;)I

    move-result v10

    .line 178
    if-nez v10, :cond_4c

    move v0, v3

    move v7, v6

    .line 190
    :goto_41
    invoke-virtual {p1, v4, v5}, Lorg/jshybugger/aC;->a(J)V

    .line 192
    if-eqz v0, :cond_5a

    .line 193
    invoke-virtual {p1}, Lorg/jshybugger/aC;->c()Z

    move v0, v1

    :goto_4a
    move v1, v0

    .line 231
    goto :goto_6

    .line 183
    :cond_4c
    int-to-long v10, v10

    add-long/2addr v4, v10

    .line 184
    invoke-virtual {v0}, Lorg/jshybugger/H;->e()Z

    move-result v10

    if-nez v10, :cond_57

    move v0, v6

    move v7, v3

    .line 186
    goto :goto_41

    .line 176
    :cond_57
    add-int/lit8 v7, v7, -0x1

    goto :goto_37

    .line 195
    :cond_5a
    invoke-virtual {p0, v7}, Lorg/jshybugger/cb;->a(Z)V

    goto :goto_f

    .line 198
    :cond_5e
    instance-of v4, v0, Lorg/jshybugger/bx;

    if-eqz v4, :cond_a0

    .line 199
    check-cast v0, Lorg/jshybugger/bx;

    .line 203
    if-ne v1, v2, :cond_6e

    .line 204
    invoke-virtual {p0}, Lorg/jshybugger/cb;->A()Lorg/jshybugger/al;

    move-result-object v1

    invoke-interface {v1}, Lorg/jshybugger/al;->c()I

    move-result v1

    .line 206
    :cond_6e
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    move-wide v4, v8

    :goto_72
    if-ltz v7, :cond_b9

    .line 207
    invoke-virtual {p0, v0}, Lorg/jshybugger/cb;->a(Lorg/jshybugger/bx;)J

    move-result-wide v10

    .line 208
    cmp-long v12, v10, v8

    if-nez v12, :cond_88

    move v0, v3

    move v7, v6

    .line 220
    :goto_7e
    invoke-virtual {p1, v4, v5}, Lorg/jshybugger/aC;->a(J)V

    .line 222
    if-eqz v0, :cond_9b

    .line 223
    invoke-virtual {p1}, Lorg/jshybugger/aC;->c()Z

    move v0, v1

    goto :goto_4a

    .line 213
    :cond_88
    add-long/2addr v4, v10

    .line 214
    invoke-interface {v0}, Lorg/jshybugger/bx;->a()J

    move-result-wide v10

    invoke-interface {v0}, Lorg/jshybugger/bx;->b()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_98

    move v0, v6

    move v7, v3

    .line 216
    goto :goto_7e

    .line 206
    :cond_98
    add-int/lit8 v7, v7, -0x1

    goto :goto_72

    .line 225
    :cond_9b
    invoke-virtual {p0, v7}, Lorg/jshybugger/cb;->a(Z)V

    goto/16 :goto_f

    .line 228
    :cond_a0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupported message type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b9
    move v0, v3

    move v7, v3

    goto :goto_7e

    :cond_bc
    move v0, v3

    move v7, v3

    goto :goto_41
.end method

.method protected final a(Z)V
    .registers 5

    .prologue
    .line 236
    if-eqz p1, :cond_14

    .line 237
    invoke-virtual {p0}, Lorg/jshybugger/cb;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_13

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 251
    :cond_13
    :goto_13
    return-void

    .line 240
    :cond_14
    iget-object v0, p0, Lorg/jshybugger/cb;->e:Ljava/lang/Runnable;

    .line 241
    if-nez v0, :cond_1f

    .line 242
    new-instance v0, Lorg/jshybugger/cc;

    invoke-direct {v0, p0}, Lorg/jshybugger/cc;-><init>(Lorg/jshybugger/cb;)V

    iput-object v0, p0, Lorg/jshybugger/cb;->e:Ljava/lang/Runnable;

    .line 249
    :cond_1f
    invoke-virtual {p0}, Lorg/jshybugger/cb;->H()Lorg/jshybugger/cl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jshybugger/cl;->execute(Ljava/lang/Runnable;)V

    goto :goto_13
.end method

.method protected abstract b(Lorg/jshybugger/H;)I
.end method

.method protected final synthetic o()Lorg/jshybugger/Z;
    .registers 3

    .prologue
    .line 37
    new-instance v0, Lorg/jshybugger/cd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/cd;-><init>(Lorg/jshybugger/cb;B)V

    return-object v0
.end method
