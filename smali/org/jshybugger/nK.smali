.class public Lorg/jshybugger/nk;
.super Lorg/jshybugger/nj;
.source "ScriptNode.java"


# instance fields
.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/no;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field l:[Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:[Z

.field private t:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lorg/jshybugger/nj;-><init>()V

    .line 22
    iput v0, p0, Lorg/jshybugger/nk;->o:I

    .line 23
    iput v0, p0, Lorg/jshybugger/nk;->p:I

    .line 26
    iput v0, p0, Lorg/jshybugger/nk;->r:I

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    .line 33
    iput v2, p0, Lorg/jshybugger/nk;->j:I

    .line 38
    iput v2, p0, Lorg/jshybugger/nk;->t:I

    .line 42
    iput-object p0, p0, Lorg/jshybugger/nk;->n:Lorg/jshybugger/nk;

    .line 43
    const/16 v0, 0x88

    iput v0, p0, Lorg/jshybugger/nk;->a:I

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1}, Lorg/jshybugger/nj;-><init>(I)V

    .line 22
    iput v0, p0, Lorg/jshybugger/nk;->o:I

    .line 23
    iput v0, p0, Lorg/jshybugger/nk;->p:I

    .line 26
    iput v0, p0, Lorg/jshybugger/nk;->r:I

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    .line 33
    iput v2, p0, Lorg/jshybugger/nk;->j:I

    .line 38
    iput v2, p0, Lorg/jshybugger/nk;->t:I

    .line 42
    iput-object p0, p0, Lorg/jshybugger/nk;->n:Lorg/jshybugger/nk;

    .line 43
    const/16 v0, 0x88

    iput v0, p0, Lorg/jshybugger/nk;->a:I

    .line 51
    return-void
.end method


# virtual methods
.method public final A()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jshybugger/nk;->l:[Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 234
    :cond_9
    iget-object v0, p0, Lorg/jshybugger/nk;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .registers 4

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jshybugger/nk;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jshybugger/nk;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 310
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 311
    invoke-virtual {p0}, Lorg/jshybugger/nk;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/lH;

    .line 312
    check-cast v0, Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_a

    .line 315
    :cond_1c
    return-void
.end method

.method public final b(Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 267
    if-nez p1, :cond_2a

    .line 268
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v0, p0, Lorg/jshybugger/nk;->m:Ljava/util/Map;

    if-eqz v0, :cond_28

    move v1, v2

    .line 273
    :goto_d
    iget-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 274
    iget-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/no;

    .line 275
    iget-object v4, v0, Lorg/jshybugger/no;->d:Lorg/jshybugger/nj;

    if-ne v4, p0, :cond_24

    .line 276
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 280
    :cond_28
    iput-object v3, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    .line 282
    :cond_2a
    iget-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jshybugger/nk;->l:[Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/jshybugger/nk;->s:[Z

    move v1, v2

    .line 284
    :goto_3f
    iget-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 285
    iget-object v0, p0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/no;

    .line 286
    iget-object v3, p0, Lorg/jshybugger/nk;->l:[Ljava/lang/String;

    iget-object v4, v0, Lorg/jshybugger/no;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 287
    iget-object v4, p0, Lorg/jshybugger/nk;->s:[Z

    iget v3, v0, Lorg/jshybugger/no;->a:I

    const/16 v5, 0x9a

    if-ne v3, v5, :cond_66

    const/4 v3, 0x1

    :goto_5e
    aput-boolean v3, v4, v1

    .line 288
    iput v1, v0, Lorg/jshybugger/no;->b:I

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    :cond_66
    move v3, v2

    .line 287
    goto :goto_5e

    .line 290
    :cond_68
    return-void
.end method

.method public final d(II)V
    .registers 3

    .prologue
    .line 106
    iput p1, p0, Lorg/jshybugger/nk;->o:I

    .line 107
    iput p2, p0, Lorg/jshybugger/nk;->p:I

    .line 108
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lorg/jshybugger/nk;->q:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public final n(I)V
    .registers 3

    .prologue
    .line 147
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/jshybugger/nk;->e:I

    if-ltz v0, :cond_b

    :cond_6
    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 148
    :cond_b
    iput p1, p0, Lorg/jshybugger/nk;->e:I

    .line 149
    return-void
.end method

.method public final o(I)V
    .registers 3

    .prologue
    .line 157
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/jshybugger/nk;->r:I

    if-ltz v0, :cond_b

    :cond_6
    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 158
    :cond_b
    iput p1, p0, Lorg/jshybugger/nk;->r:I

    .line 159
    return-void
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jshybugger/nk;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final z()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lorg/jshybugger/nk;->r:I

    return v0
.end method
