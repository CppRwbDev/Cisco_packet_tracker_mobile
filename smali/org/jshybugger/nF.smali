.class public final Lorg/jshybugger/nf;
.super Lorg/jshybugger/mt;
.source "ParenthesizedExpression.java"


# instance fields
.field private i:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 20
    const/16 v0, 0x57

    iput v0, p0, Lorg/jshybugger/nf;->a:I

    .line 24
    return-void
.end method

.method private constructor <init>(IILorg/jshybugger/mt;)V
    .registers 5

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 20
    const/16 v0, 0x57

    iput v0, p0, Lorg/jshybugger/nf;->a:I

    .line 42
    invoke-static {p3}, Lorg/jshybugger/nf;->a(Ljava/lang/Object;)V

    iput-object p3, p0, Lorg/jshybugger/nf;->i:Lorg/jshybugger/mt;

    invoke-virtual {p3, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/mt;)V
    .registers 4

    .prologue
    .line 35
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/jshybugger/mt;->n()I

    move-result v0

    move v1, v0

    :goto_7
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lorg/jshybugger/mt;->p()I

    move-result v0

    :goto_d
    invoke-direct {p0, v1, v0, p1}, Lorg/jshybugger/nf;-><init>(IILorg/jshybugger/mt;)V

    .line 38
    return-void

    .line 35
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lorg/jshybugger/nf;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 77
    :cond_b
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/jshybugger/nf;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/nf;->i:Lorg/jshybugger/mt;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jshybugger/nf;->i:Lorg/jshybugger/mt;

    return-object v0
.end method
