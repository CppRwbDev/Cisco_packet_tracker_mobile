.class public abstract Lorg/jshybugger/cx;
.super Lorg/jshybugger/ay;
.source "ByteToMessageDecoder.java"


# instance fields
.field b:Lorg/jshybugger/H;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jshybugger/ay;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jshybugger/au;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "@Sharable annotation is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_17
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/jshybugger/cx;->b()Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v0

    return v0
.end method

.method public final a(Lorg/jshybugger/aw;Ljava/lang/Object;)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    instance-of v2, p2, Lorg/jshybugger/H;

    if-eqz v2, :cond_be

    .line 126
    invoke-static {}, Lorg/jshybugger/gr;->a()Lorg/jshybugger/gr;

    move-result-object v3

    .line 128
    :try_start_b
    check-cast p2, Lorg/jshybugger/H;

    .line 129
    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-nez v2, :cond_46

    move v2, v0

    :goto_12
    iput-boolean v2, p0, Lorg/jshybugger/cx;->d:Z

    .line 130
    iget-boolean v2, p0, Lorg/jshybugger/cx;->d:Z

    if-eqz v2, :cond_48

    .line 131
    iput-object p2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    .line 139
    :goto_1a
    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {p0, p1, v2, v3}, Lorg/jshybugger/cx;->a(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V
    :try_end_1f
    .catch Lorg/jshybugger/cA; {:try_start_b .. :try_end_1f} :catch_81
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1f} :catch_b1
    .catchall {:try_start_b .. :try_end_1f} :catchall_83

    .line 145
    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v2}, Lorg/jshybugger/H;->e()Z

    move-result v2

    if-nez v2, :cond_32

    .line 146
    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v2}, Lorg/jshybugger/H;->v()Z

    .line 147
    iput-object v7, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    .line 149
    :cond_32
    invoke-virtual {v3}, Lorg/jshybugger/gr;->size()I

    move-result v2

    .line 150
    if-nez v2, :cond_ab

    :goto_38
    iput-boolean v0, p0, Lorg/jshybugger/cx;->c:Z

    .line 152
    :goto_3a
    if-ge v1, v2, :cond_ad

    .line 153
    invoke-virtual {v3, v1}, Lorg/jshybugger/gr;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jshybugger/aw;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_46
    move v2, v1

    .line 129
    goto :goto_12

    .line 133
    :cond_48
    :try_start_48
    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v2}, Lorg/jshybugger/H;->c()I

    move-result v2

    iget-object v4, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v4}, Lorg/jshybugger/H;->a()I

    move-result v4

    invoke-virtual {p2}, Lorg/jshybugger/H;->f()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_78

    .line 134
    invoke-virtual {p2}, Lorg/jshybugger/H;->f()I

    move-result v2

    iget-object v4, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-interface {p1}, Lorg/jshybugger/aw;->c()Lorg/jshybugger/I;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jshybugger/H;->f()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v2}, Lorg/jshybugger/I;->a(I)Lorg/jshybugger/H;

    move-result-object v2

    iput-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v2, v4}, Lorg/jshybugger/H;->b(Lorg/jshybugger/H;)Lorg/jshybugger/H;

    invoke-virtual {v4}, Lorg/jshybugger/H;->v()Z

    .line 136
    :cond_78
    iget-object v2, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v2, p2}, Lorg/jshybugger/H;->b(Lorg/jshybugger/H;)Lorg/jshybugger/H;

    .line 137
    invoke-virtual {p2}, Lorg/jshybugger/H;->v()Z
    :try_end_80
    .catch Lorg/jshybugger/cA; {:try_start_48 .. :try_end_80} :catch_81
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_80} :catch_b1
    .catchall {:try_start_48 .. :try_end_80} :catchall_83

    goto :goto_1a

    .line 140
    :catch_81
    move-exception v2

    .line 141
    :try_start_82
    throw v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    .line 145
    :catchall_83
    move-exception v2

    iget-object v4, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-eqz v4, :cond_97

    iget-object v4, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v4}, Lorg/jshybugger/H;->e()Z

    move-result v4

    if-nez v4, :cond_97

    .line 146
    iget-object v4, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v4}, Lorg/jshybugger/H;->v()Z

    .line 147
    iput-object v7, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    .line 149
    :cond_97
    invoke-virtual {v3}, Lorg/jshybugger/gr;->size()I

    move-result v4

    .line 150
    if-nez v4, :cond_b8

    :goto_9d
    iput-boolean v0, p0, Lorg/jshybugger/cx;->c:Z

    .line 152
    :goto_9f
    if-ge v1, v4, :cond_ba

    .line 153
    invoke-virtual {v3, v1}, Lorg/jshybugger/gr;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jshybugger/aw;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_ab
    move v0, v1

    .line 150
    goto :goto_38

    .line 155
    :cond_ad
    invoke-virtual {v3}, Lorg/jshybugger/gr;->b()Z

    .line 160
    :goto_b0
    return-void

    .line 142
    :catch_b1
    move-exception v2

    .line 143
    :try_start_b2
    new-instance v4, Lorg/jshybugger/cA;

    invoke-direct {v4, v2}, Lorg/jshybugger/cA;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_83

    :cond_b8
    move v0, v1

    .line 150
    goto :goto_9d

    .line 155
    :cond_ba
    invoke-virtual {v3}, Lorg/jshybugger/gr;->b()Z

    .line 156
    throw v2

    .line 157
    :cond_be
    invoke-interface {p1, p2}, Lorg/jshybugger/aw;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    goto :goto_b0
.end method

.method protected a(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/aw;",
            "Lorg/jshybugger/H;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/jshybugger/H;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 224
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 225
    invoke-virtual {p2}, Lorg/jshybugger/H;->f()I

    move-result v1

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/cx;->b(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V

    .line 232
    invoke-interface {p1}, Lorg/jshybugger/aw;->g()Z

    move-result v2

    if-nez v2, :cond_23

    .line 233
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_24

    .line 237
    invoke-virtual {p2}, Lorg/jshybugger/H;->f()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 259
    :cond_23
    return-void

    .line 244
    :cond_24
    invoke-virtual {p2}, Lorg/jshybugger/H;->f()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 245
    new-instance v0, Lorg/jshybugger/cA;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/gt;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".decode() did not read anything but decoded a message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/cA;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catch Lorg/jshybugger/cA; {:try_start_0 .. :try_end_4b} :catch_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_4d

    .line 254
    :catch_4b
    move-exception v0

    .line 255
    throw v0

    .line 256
    :catch_4d
    move-exception v0

    .line 257
    new-instance v1, Lorg/jshybugger/cA;

    invoke-direct {v1, v0}, Lorg/jshybugger/cA;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final b()Lorg/jshybugger/H;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-eqz v0, :cond_7

    .line 97
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    .line 99
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/jshybugger/S;->a:Lorg/jshybugger/H;

    goto :goto_6
.end method

.method protected abstract b(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/aw;",
            "Lorg/jshybugger/H;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected c(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/aw;",
            "Lorg/jshybugger/H;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/cx;->b(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V

    .line 283
    return-void
.end method

.method public final d(Lorg/jshybugger/aw;)V
    .registers 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/jshybugger/cx;->b()Lorg/jshybugger/H;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v1

    .line 107
    invoke-virtual {v0}, Lorg/jshybugger/H;->e()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 108
    invoke-virtual {v0, v1}, Lorg/jshybugger/H;->p(I)Lorg/jshybugger/H;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    .line 110
    invoke-interface {p1, v1}, Lorg/jshybugger/aw;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    .line 112
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    .line 113
    invoke-interface {p1}, Lorg/jshybugger/aw;->o()Lorg/jshybugger/aw;

    .line 114
    invoke-virtual {p0, p1}, Lorg/jshybugger/cx;->k(Lorg/jshybugger/aw;)V

    .line 115
    return-void
.end method

.method public h(Lorg/jshybugger/aw;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-static {}, Lorg/jshybugger/gr;->a()Lorg/jshybugger/gr;

    move-result-object v2

    .line 189
    :try_start_6
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-eqz v0, :cond_2f

    .line 190
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {p0, p1, v0, v2}, Lorg/jshybugger/cx;->a(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {p0, p1, v0, v2}, Lorg/jshybugger/cx;->c(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V
    :try_end_14
    .catch Lorg/jshybugger/cA; {:try_start_6 .. :try_end_14} :catch_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_5a
    .catchall {:try_start_6 .. :try_end_14} :catchall_37

    .line 200
    :goto_14
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-eqz v0, :cond_1f

    .line 201
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    .line 202
    iput-object v4, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    .line 204
    :cond_1f
    invoke-virtual {v2}, Lorg/jshybugger/gr;->size()I

    move-result v0

    .line 205
    :goto_23
    if-ge v1, v0, :cond_53

    .line 206
    invoke-virtual {v2, v1}, Lorg/jshybugger/gr;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/jshybugger/aw;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 193
    :cond_2f
    :try_start_2f
    sget-object v0, Lorg/jshybugger/S;->a:Lorg/jshybugger/H;

    invoke-virtual {p0, p1, v0, v2}, Lorg/jshybugger/cx;->c(Lorg/jshybugger/aw;Lorg/jshybugger/H;Ljava/util/List;)V
    :try_end_34
    .catch Lorg/jshybugger/cA; {:try_start_2f .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_5a
    .catchall {:try_start_2f .. :try_end_34} :catchall_37

    goto :goto_14

    .line 195
    :catch_35
    move-exception v0

    .line 196
    :try_start_36
    throw v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 200
    :catchall_37
    move-exception v0

    iget-object v3, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-eqz v3, :cond_43

    .line 201
    iget-object v3, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v3}, Lorg/jshybugger/H;->v()Z

    .line 202
    iput-object v4, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    .line 204
    :cond_43
    invoke-virtual {v2}, Lorg/jshybugger/gr;->size()I

    move-result v3

    .line 205
    :goto_47
    if-ge v1, v3, :cond_61

    .line 206
    invoke-virtual {v2, v1}, Lorg/jshybugger/gr;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/jshybugger/aw;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 208
    :cond_53
    invoke-interface {p1}, Lorg/jshybugger/aw;->n()Lorg/jshybugger/aw;

    .line 209
    invoke-virtual {v2}, Lorg/jshybugger/gr;->b()Z

    .line 210
    return-void

    .line 197
    :catch_5a
    move-exception v0

    .line 198
    :try_start_5b
    new-instance v3, Lorg/jshybugger/cA;

    invoke-direct {v3, v0}, Lorg/jshybugger/cA;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_37

    .line 208
    :cond_61
    invoke-interface {p1}, Lorg/jshybugger/aw;->n()Lorg/jshybugger/aw;

    .line 209
    invoke-virtual {v2}, Lorg/jshybugger/gr;->b()Z

    .line 210
    throw v0
.end method

.method public final i(Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/jshybugger/cx;->d:Z

    if-nez v0, :cond_d

    .line 174
    iget-object v0, p0, Lorg/jshybugger/cx;->b:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->h()Lorg/jshybugger/H;

    .line 176
    :cond_d
    iget-boolean v0, p0, Lorg/jshybugger/cx;->c:Z

    if-eqz v0, :cond_25

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jshybugger/cx;->c:Z

    .line 178
    invoke-interface {p1}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/aj;->A()Lorg/jshybugger/al;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/al;->f()Z

    move-result v0

    if-nez v0, :cond_25

    .line 179
    invoke-interface {p1}, Lorg/jshybugger/aw;->y()Lorg/jshybugger/aI;

    .line 182
    :cond_25
    invoke-interface {p1}, Lorg/jshybugger/aw;->o()Lorg/jshybugger/aw;

    .line 183
    return-void
.end method

.method public k(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 121
    return-void
.end method
