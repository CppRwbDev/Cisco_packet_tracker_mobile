.class public final Lorg/jshybugger/nc;
.super Lorg/jshybugger/mt;
.source "NumberLiteral.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 20
    const/16 v0, 0x28

    iput v0, p0, Lorg/jshybugger/nc;->a:I

    .line 24
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/jshybugger/mt;-><init>(I)V

    .line 20
    const/16 v0, 0x28

    iput v0, p0, Lorg/jshybugger/nc;->a:I

    .line 39
    invoke-virtual {p0, p2}, Lorg/jshybugger/nc;->b(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/nc;->j(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;D)V
    .registers 6

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/nc;-><init>(ILjava/lang/String;)V

    .line 48
    invoke-virtual {p0, p3, p4}, Lorg/jshybugger/nc;->b(D)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/nb;)V
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    .line 97
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    invoke-static {p1}, Lorg/jshybugger/nc;->a(Ljava/lang/Object;)V

    .line 69
    iput-object p1, p0, Lorg/jshybugger/nc;->i:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final c(D)V
    .registers 4

    .prologue
    .line 83
    iput-wide p1, p0, Lorg/jshybugger/nc;->j:D

    .line 84
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/jshybugger/nc;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jshybugger/nc;->i:Ljava/lang/String;

    if-nez v0, :cond_1c

    const-string v0, "<null>"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    iget-object v0, p0, Lorg/jshybugger/nc;->i:Ljava/lang/String;

    goto :goto_13
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jshybugger/nc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()D
    .registers 3

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/jshybugger/nc;->j:D

    return-wide v0
.end method
