.class final Lorg/jshybugger/ck;
.super Lorg/jshybugger/cf;
.source "AbstractNioMessageChannel.java"


# static fields
.field private static synthetic d:Z


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic e:Lorg/jshybugger/cj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lorg/jshybugger/cj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jshybugger/ck;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lorg/jshybugger/cj;)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    invoke-direct {p0, p1}, Lorg/jshybugger/cf;-><init>(Lorg/jshybugger/ce;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/ck;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/cj;B)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/jshybugger/ck;-><init>(Lorg/jshybugger/cj;)V

    return-void
.end method


# virtual methods
.method public final j()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    sget-boolean v0, Lorg/jshybugger/ck;->d:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    invoke-virtual {v0}, Lorg/jshybugger/cj;->H()Lorg/jshybugger/cl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/cl;->d()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_18
    iget-object v0, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    invoke-virtual {v0}, Lorg/jshybugger/cj;->A()Lorg/jshybugger/al;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/al;->f()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 63
    iget-object v0, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    invoke-virtual {v0}, Lorg/jshybugger/cj;->I()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    iget-object v4, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    iget v4, v4, Lorg/jshybugger/cj;->d:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    iget v4, v4, Lorg/jshybugger/cj;->d:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 66
    :cond_3f
    iget-object v0, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    invoke-virtual {v0}, Lorg/jshybugger/cj;->A()Lorg/jshybugger/al;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lorg/jshybugger/al;->b()I

    move-result v5

    .line 68
    invoke-interface {v0}, Lorg/jshybugger/al;->f()Z

    move-result v6

    .line 69
    iget-object v0, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    invoke-virtual {v0}, Lorg/jshybugger/cj;->b()Lorg/jshybugger/aJ;

    move-result-object v7

    .line 71
    const/4 v0, 0x0

    .line 74
    :cond_54
    :try_start_54
    iget-object v1, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    iget-object v4, p0, Lorg/jshybugger/ck;->c:Ljava/util/List;

    invoke-virtual {v1, v4}, Lorg/jshybugger/cj;->a(Ljava/util/List;)I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5b} :catch_8b

    move-result v1

    .line 75
    if-eqz v1, :cond_85

    .line 76
    if-gez v1, :cond_76

    move v1, v2

    .line 91
    :goto_61
    iget-object v4, p0, Lorg/jshybugger/ck;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v3

    .line 92
    :goto_68
    if-ge v4, v5, :cond_8e

    .line 93
    iget-object v6, p0, Lorg/jshybugger/ck;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v6}, Lorg/jshybugger/aJ;->d(Ljava/lang/Object;)Lorg/jshybugger/aJ;

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 83
    :cond_76
    :try_start_76
    iget-object v1, p0, Lorg/jshybugger/ck;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_7b} :catch_8b

    move-result v1

    if-lt v1, v5, :cond_87

    move v4, v2

    :goto_7f
    if-nez v6, :cond_89

    move v1, v2

    :goto_82
    or-int/2addr v1, v4

    if-eqz v1, :cond_54

    :cond_85
    move v1, v3

    .line 89
    goto :goto_61

    :cond_87
    move v4, v3

    .line 83
    goto :goto_7f

    :cond_89
    move v1, v3

    goto :goto_82

    .line 87
    :catch_8b
    move-exception v0

    move v1, v3

    .line 88
    goto :goto_61

    .line 95
    :cond_8e
    iget-object v4, p0, Lorg/jshybugger/ck;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 96
    invoke-interface {v7}, Lorg/jshybugger/aJ;->b()Lorg/jshybugger/aJ;

    .line 98
    if-eqz v0, :cond_bd

    .line 99
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_bb

    .line 102
    iget-object v1, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    instance-of v1, v1, Lorg/jshybugger/bD;

    if-nez v1, :cond_b9

    .line 105
    :goto_a2
    invoke-interface {v7, v0}, Lorg/jshybugger/aJ;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aJ;

    .line 108
    :goto_a5
    if-eqz v2, :cond_b8

    .line 109
    iget-object v0, p0, Lorg/jshybugger/ck;->e:Lorg/jshybugger/cj;

    invoke-virtual {v0}, Lorg/jshybugger/cj;->B()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 110
    iget-object v0, p0, Lorg/jshybugger/Z;->a:Lorg/jshybugger/Y;

    invoke-static {v0}, Lorg/jshybugger/Y;->d(Lorg/jshybugger/Y;)Lorg/jshybugger/bH;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/ck;->b(Lorg/jshybugger/aM;)V

    .line 113
    :cond_b8
    return-void

    :cond_b9
    move v2, v3

    .line 102
    goto :goto_a2

    :cond_bb
    move v2, v1

    goto :goto_a2

    :cond_bd
    move v2, v1

    goto :goto_a5
.end method
