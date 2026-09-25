.class public abstract Lorg/jshybugger/dz;
.super Lorg/jshybugger/cH;
.source "HttpContentDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/cH",
        "<",
        "Lorg/jshybugger/dN;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic f:Z


# instance fields
.field private b:Lorg/jshybugger/bI;

.field private c:Lorg/jshybugger/dL;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lorg/jshybugger/dz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jshybugger/dz;->f:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jshybugger/cH;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    if-eqz v0, :cond_1d

    .line 207
    iget-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    invoke-virtual {v0}, Lorg/jshybugger/bI;->G()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 209
    :goto_c
    iget-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    invoke-virtual {v0}, Lorg/jshybugger/bI;->F()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/H;

    .line 210
    if-eqz v0, :cond_1a

    .line 211
    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    goto :goto_c

    .line 217
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    .line 219
    :cond_1d
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    :goto_0
    iget-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    invoke-virtual {v0}, Lorg/jshybugger/bI;->E()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/H;

    .line 238
    if-eqz v0, :cond_1d

    .line 239
    invoke-virtual {v0}, Lorg/jshybugger/H;->e()Z

    move-result v1

    if-nez v1, :cond_14

    .line 242
    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    goto :goto_0

    .line 245
    :cond_14
    new-instance v1, Lorg/jshybugger/di;

    invoke-direct {v1, v0}, Lorg/jshybugger/di;-><init>(Lorg/jshybugger/H;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1d
    return-void
.end method

.method private a(Lorg/jshybugger/dw;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/dw;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-interface {p1}, Lorg/jshybugger/dw;->a()Lorg/jshybugger/H;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/jshybugger/bI;->a([Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lorg/jshybugger/dz;->a(Ljava/util/List;)V

    .line 153
    instance-of v0, p1, Lorg/jshybugger/ed;

    if-eqz v0, :cond_3b

    .line 154
    iget-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    invoke-virtual {v0}, Lorg/jshybugger/bI;->G()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p2}, Lorg/jshybugger/dz;->a(Ljava/util/List;)V

    :cond_25
    iput-boolean v3, p0, Lorg/jshybugger/dz;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    .line 156
    check-cast p1, Lorg/jshybugger/ed;

    .line 159
    invoke-interface {p1}, Lorg/jshybugger/ed;->b()Lorg/jshybugger/dJ;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lorg/jshybugger/dJ;->b()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 161
    sget-object v0, Lorg/jshybugger/ed;->a:Lorg/jshybugger/ed;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_3b
    :goto_3b
    return-void

    .line 163
    :cond_3c
    new-instance v1, Lorg/jshybugger/df;

    invoke-direct {v1, v0}, Lorg/jshybugger/df;-><init>(Lorg/jshybugger/dJ;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lorg/jshybugger/bI;
.end method

.method protected final synthetic a(Lorg/jshybugger/aw;Ljava/lang/Object;Ljava/util/List;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 45
    check-cast p2, Lorg/jshybugger/dN;

    instance-of v0, p2, Lorg/jshybugger/dX;

    if-eqz v0, :cond_25

    move-object v0, p2

    check-cast v0, Lorg/jshybugger/dX;

    invoke-interface {v0}, Lorg/jshybugger/dX;->h()Lorg/jshybugger/ea;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/ea;->a()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_25

    instance-of v0, p2, Lorg/jshybugger/ed;

    if-nez v0, :cond_1d

    iput-boolean v3, p0, Lorg/jshybugger/dz;->e:Z

    :cond_1d
    invoke-static {p2}, Lorg/jshybugger/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-boolean v0, p0, Lorg/jshybugger/dz;->e:Z

    if-eqz v0, :cond_37

    instance-of v0, p2, Lorg/jshybugger/ed;

    if-eqz v0, :cond_2f

    iput-boolean v1, p0, Lorg/jshybugger/dz;->e:Z

    :cond_2f
    invoke-static {p2}, Lorg/jshybugger/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_37
    instance-of v0, p2, Lorg/jshybugger/dL;

    if-eqz v0, :cond_53

    sget-boolean v0, Lorg/jshybugger/dz;->f:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lorg/jshybugger/dz;->c:Lorg/jshybugger/dL;

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_49
    move-object v0, p2

    check-cast v0, Lorg/jshybugger/dL;

    iput-object v0, p0, Lorg/jshybugger/dz;->c:Lorg/jshybugger/dL;

    iput-boolean v1, p0, Lorg/jshybugger/dz;->d:Z

    invoke-direct {p0}, Lorg/jshybugger/dz;->a()V

    :cond_53
    instance-of v0, p2, Lorg/jshybugger/dw;

    if-eqz v0, :cond_24

    check-cast p2, Lorg/jshybugger/dw;

    iget-boolean v0, p0, Lorg/jshybugger/dz;->d:Z

    if-nez v0, :cond_de

    iput-boolean v3, p0, Lorg/jshybugger/dz;->d:Z

    iget-object v2, p0, Lorg/jshybugger/dz;->c:Lorg/jshybugger/dL;

    invoke-interface {v2}, Lorg/jshybugger/dL;->f()Lorg/jshybugger/dJ;

    move-result-object v3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/dz;->c:Lorg/jshybugger/dL;

    const-string v0, "Content-Encoding"

    invoke-virtual {v3, v0}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_74
    invoke-virtual {p0, v0}, Lorg/jshybugger/dz;->a(Ljava/lang/String;)Lorg/jshybugger/bI;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    if-eqz v0, :cond_cc

    const-string v0, "identity"

    const-string v4, "identity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const-string v0, "Content-Encoding"

    invoke-virtual {v3, v0}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;)Lorg/jshybugger/dJ;

    :goto_8b
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2, p3}, Lorg/jshybugger/dz;->a(Lorg/jshybugger/dw;Ljava/util/List;)V

    const-string v0, "Content-Length"

    invoke-virtual {v3, v0}, Lorg/jshybugger/dJ;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_9e
    if-ge v2, v4, :cond_c1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/jshybugger/dw;

    if-eqz v5, :cond_f6

    check-cast v0, Lorg/jshybugger/dw;

    invoke-interface {v0}, Lorg/jshybugger/dw;->a()Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v0

    add-int/2addr v0, v1

    :goto_b3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_9e

    :cond_b8
    const-string v0, "identity"

    goto :goto_74

    :cond_bb
    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4, v0}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    goto :goto_8b

    :cond_c1
    const-string v0, "Content-Length"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    goto/16 :goto_24

    :cond_cc
    instance-of v0, p2, Lorg/jshybugger/ed;

    if-eqz v0, :cond_d2

    iput-boolean v1, p0, Lorg/jshybugger/dz;->d:Z

    :cond_d2
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lorg/jshybugger/dw;->d()Lorg/jshybugger/dw;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_de
    iget-object v0, p0, Lorg/jshybugger/dz;->b:Lorg/jshybugger/bI;

    if-eqz v0, :cond_e7

    invoke-direct {p0, p2, p3}, Lorg/jshybugger/dz;->a(Lorg/jshybugger/dw;Ljava/util/List;)V

    goto/16 :goto_24

    :cond_e7
    instance-of v0, p2, Lorg/jshybugger/ed;

    if-eqz v0, :cond_ed

    iput-boolean v1, p0, Lorg/jshybugger/dz;->d:Z

    :cond_ed
    invoke-interface {p2}, Lorg/jshybugger/dw;->d()Lorg/jshybugger/dw;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_f6
    move v0, v1

    goto :goto_b3
.end method

.method public final d(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/jshybugger/dz;->a()V

    .line 195
    invoke-super {p0, p1}, Lorg/jshybugger/cH;->d(Lorg/jshybugger/aw;)V

    .line 196
    return-void
.end method

.method public final h(Lorg/jshybugger/aw;)V
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/jshybugger/dz;->a()V

    .line 201
    invoke-super {p0, p1}, Lorg/jshybugger/cH;->h(Lorg/jshybugger/aw;)V

    .line 202
    return-void
.end method
