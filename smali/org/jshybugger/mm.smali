.class public final Lorg/jshybugger/mM;
.super Lorg/jshybugger/nk;
.source "FunctionNode.java"


# static fields
.field private static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private p:Lorg/jshybugger/mZ;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lorg/jshybugger/mt;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Lorg/jshybugger/mt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/mM;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/jshybugger/nk;-><init>()V

    .line 76
    sget-object v0, Lorg/jshybugger/mN;->a:Lorg/jshybugger/mN;

    .line 77
    const/16 v0, 0x6d

    iput v0, p0, Lorg/jshybugger/mM;->a:I

    .line 93
    return-void
.end method

.method public constructor <init>(ILorg/jshybugger/mZ;)V
    .registers 4

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/jshybugger/nk;-><init>(I)V

    .line 76
    sget-object v0, Lorg/jshybugger/mN;->a:Lorg/jshybugger/mN;

    .line 77
    const/16 v0, 0x6d

    iput v0, p0, Lorg/jshybugger/mM;->a:I

    .line 101
    iput-object p2, p0, Lorg/jshybugger/mM;->p:Lorg/jshybugger/mZ;

    if-eqz p2, :cond_10

    invoke-virtual {p2, p0}, Lorg/jshybugger/mZ;->c(Lorg/jshybugger/mt;)V

    .line 102
    :cond_10
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 3

    .prologue
    .line 162
    invoke-static {p1}, Lorg/jshybugger/mM;->a(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lorg/jshybugger/mM;->q:Ljava/util/List;

    if-nez v0, :cond_e

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mM;->q:Ljava/util/List;

    .line 166
    :cond_e
    iget-object v0, p0, Lorg/jshybugger/mM;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 168
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 414
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 415
    iget-object v0, p0, Lorg/jshybugger/mM;->p:Lorg/jshybugger/mZ;

    if-eqz v0, :cond_f

    .line 416
    iget-object v0, p0, Lorg/jshybugger/mM;->p:Lorg/jshybugger/mZ;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mZ;->a(Lorg/jshybugger/nb;)V

    .line 418
    :cond_f
    invoke-virtual {p0}, Lorg/jshybugger/mM;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 419
    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_17

    .line 421
    :cond_27
    iget-object v0, p0, Lorg/jshybugger/mM;->r:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 422
    iget-boolean v0, p0, Lorg/jshybugger/mM;->s:Z

    if-nez v0, :cond_39

    .line 423
    iget-object v0, p0, Lorg/jshybugger/mM;->w:Lorg/jshybugger/mt;

    if-eqz v0, :cond_39

    .line 424
    iget-object v0, p0, Lorg/jshybugger/mM;->w:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 428
    :cond_39
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 4

    .prologue
    .line 201
    invoke-static {p1}, Lorg/jshybugger/mM;->a(Ljava/lang/Object;)V

    .line 202
    iput-object p1, p0, Lorg/jshybugger/mM;->r:Lorg/jshybugger/mt;

    .line 203
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Lorg/jshybugger/mt;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/mM;->s:Z

    .line 206
    :cond_16
    invoke-virtual {p1}, Lorg/jshybugger/mt;->n()I

    move-result v0

    invoke-virtual {p1}, Lorg/jshybugger/mt;->p()I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 208
    iget v1, p0, Lorg/jshybugger/mM;->f:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/jshybugger/mM;->j(I)V

    .line 209
    iget v1, p0, Lorg/jshybugger/mM;->f:I

    invoke-virtual {p0, v1, v0}, Lorg/jshybugger/mM;->d(II)V

    .line 210
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 223
    return-void
.end method

.method public final e(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lorg/jshybugger/mM;->w:Lorg/jshybugger/mt;

    .line 360
    if-eqz p1, :cond_7

    .line 361
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 362
    :cond_7
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 237
    return-void
.end method

.method public final g(I)V
    .registers 2

    .prologue
    .line 325
    iput p1, p0, Lorg/jshybugger/mM;->t:I

    .line 326
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-static {p1}, Lorg/jshybugger/mM;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v0, "function"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v0, p0, Lorg/jshybugger/mM;->p:Lorg/jshybugger/mZ;

    if-eqz v0, :cond_25

    .line 374
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v0, p0, Lorg/jshybugger/mM;->p:Lorg/jshybugger/mZ;

    invoke-virtual {v0, v3}, Lorg/jshybugger/mZ;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_25
    iget-object v0, p0, Lorg/jshybugger/mM;->q:Ljava/util/List;

    if-nez v0, :cond_62

    .line 378
    const-string v0, "() "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :goto_2e
    iget-boolean v0, p0, Lorg/jshybugger/mM;->s:Z

    if-eqz v0, :cond_7f

    .line 385
    iget-object v0, p0, Lorg/jshybugger/mM;->r:Lorg/jshybugger/mt;

    .line 386
    invoke-virtual {v0}, Lorg/jshybugger/mt;->c()Lorg/jshybugger/lH;

    move-result-object v2

    instance-of v2, v2, Lorg/jshybugger/ni;

    if-eqz v2, :cond_72

    .line 388
    invoke-virtual {v0}, Lorg/jshybugger/mt;->c()Lorg/jshybugger/lH;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ni;

    iget-object v0, v0, Lorg/jshybugger/ni;->i:Lorg/jshybugger/mt;

    .line 389
    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget v0, p0, Lorg/jshybugger/mM;->t:I

    if-ne v0, v4, :cond_54

    .line 391
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_54
    :goto_54
    iget v0, p0, Lorg/jshybugger/mM;->t:I

    if-ne v0, v4, :cond_5d

    .line 402
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :cond_62
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v0, p0, Lorg/jshybugger/mM;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/jshybugger/mM;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 382
    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 395
    :cond_72
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 399
    :cond_7f
    iget-object v0, p0, Lorg/jshybugger/mM;->r:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54
.end method

.method public final k()Lorg/jshybugger/mZ;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jshybugger/mM;->p:Lorg/jshybugger/mZ;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jshybugger/mM;->q:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jshybugger/mM;->q:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/jshybugger/mM;->o:Ljava/util/List;

    goto :goto_6
.end method

.method public final m()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/jshybugger/mM;->r:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final s()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/jshybugger/mM;->s:Z

    return v0
.end method

.method public final t()V
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/mM;->u:Z

    .line 278
    return-void
.end method

.method public final u()V
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/mM;->v:Z

    .line 286
    return-void
.end method

.method public final v()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lorg/jshybugger/mM;->t:I

    return v0
.end method
