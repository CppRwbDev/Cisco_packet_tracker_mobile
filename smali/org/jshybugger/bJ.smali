.class final Lorg/jshybugger/bj;
.super Ljava/lang/Object;
.source "DefaultChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Lorg/jshybugger/fl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fl",
            "<",
            "Lorg/jshybugger/bj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lorg/jshybugger/aS;

.field private b:Ljava/lang/Object;

.field private c:Lorg/jshybugger/aM;

.field private d:I

.field private e:Z

.field private final g:Lorg/jshybugger/fn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 872
    new-instance v0, Lorg/jshybugger/bk;

    invoke-direct {v0}, Lorg/jshybugger/bk;-><init>()V

    sput-object v0, Lorg/jshybugger/bj;->f:Lorg/jshybugger/fl;

    return-void
.end method

.method private constructor <init>(Lorg/jshybugger/fn;)V
    .registers 2

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lorg/jshybugger/bj;->g:Lorg/jshybugger/fn;

    .line 894
    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/fn;B)V
    .registers 3

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lorg/jshybugger/bj;-><init>(Lorg/jshybugger/fn;)V

    return-void
.end method

.method static synthetic a(Lorg/jshybugger/aS;Ljava/lang/Object;IZLorg/jshybugger/aM;)Lorg/jshybugger/bj;
    .registers 6

    .prologue
    .line 865
    sget-object v0, Lorg/jshybugger/bj;->f:Lorg/jshybugger/fl;

    invoke-virtual {v0}, Lorg/jshybugger/fl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/bj;

    iput-object p0, v0, Lorg/jshybugger/bj;->a:Lorg/jshybugger/aS;

    iput-object p1, v0, Lorg/jshybugger/bj;->b:Ljava/lang/Object;

    iput-object p4, v0, Lorg/jshybugger/bj;->c:Lorg/jshybugger/aM;

    iput p2, v0, Lorg/jshybugger/bj;->d:I

    iput-boolean p3, v0, Lorg/jshybugger/bj;->e:Z

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 899
    :try_start_1
    iget v0, p0, Lorg/jshybugger/bj;->d:I

    if-lez v0, :cond_1a

    .line 900
    iget-object v0, p0, Lorg/jshybugger/bj;->a:Lorg/jshybugger/aS;

    invoke-static {v0}, Lorg/jshybugger/aS;->j(Lorg/jshybugger/aS;)Lorg/jshybugger/Y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/Y;->n()Lorg/jshybugger/ak;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/ak;->a()Lorg/jshybugger/aC;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_1a

    .line 903
    iget v1, p0, Lorg/jshybugger/bj;->d:I

    invoke-virtual {v0, v1}, Lorg/jshybugger/aC;->b(I)V

    .line 906
    :cond_1a
    iget-object v0, p0, Lorg/jshybugger/bj;->a:Lorg/jshybugger/aS;

    iget-object v1, p0, Lorg/jshybugger/bj;->b:Ljava/lang/Object;

    iget-object v2, p0, Lorg/jshybugger/bj;->c:Lorg/jshybugger/aM;

    invoke-static {v0, v1, v2}, Lorg/jshybugger/aS;->a(Lorg/jshybugger/aS;Ljava/lang/Object;Lorg/jshybugger/aM;)V

    .line 907
    iget-boolean v0, p0, Lorg/jshybugger/bj;->e:Z

    if-eqz v0, :cond_2c

    .line 908
    iget-object v0, p0, Lorg/jshybugger/bj;->a:Lorg/jshybugger/aS;

    invoke-static {v0}, Lorg/jshybugger/aS;->i(Lorg/jshybugger/aS;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3a

    .line 912
    :cond_2c
    iput-object v3, p0, Lorg/jshybugger/bj;->a:Lorg/jshybugger/aS;

    .line 913
    iput-object v3, p0, Lorg/jshybugger/bj;->b:Ljava/lang/Object;

    .line 914
    iput-object v3, p0, Lorg/jshybugger/bj;->c:Lorg/jshybugger/aM;

    .line 916
    sget-object v0, Lorg/jshybugger/bj;->f:Lorg/jshybugger/fl;

    iget-object v1, p0, Lorg/jshybugger/bj;->g:Lorg/jshybugger/fn;

    invoke-virtual {v0, p0, v1}, Lorg/jshybugger/fl;->a(Ljava/lang/Object;Lorg/jshybugger/fn;)Z

    .line 917
    return-void

    .line 912
    :catchall_3a
    move-exception v0

    iput-object v3, p0, Lorg/jshybugger/bj;->a:Lorg/jshybugger/aS;

    .line 913
    iput-object v3, p0, Lorg/jshybugger/bj;->b:Ljava/lang/Object;

    .line 914
    iput-object v3, p0, Lorg/jshybugger/bj;->c:Lorg/jshybugger/aM;

    .line 916
    sget-object v1, Lorg/jshybugger/bj;->f:Lorg/jshybugger/fl;

    iget-object v2, p0, Lorg/jshybugger/bj;->g:Lorg/jshybugger/fn;

    invoke-virtual {v1, p0, v2}, Lorg/jshybugger/fl;->a(Ljava/lang/Object;Lorg/jshybugger/fn;)Z

    throw v0
.end method
