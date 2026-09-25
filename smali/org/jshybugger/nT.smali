.class public final Lorg/jshybugger/nt;
.super Lorg/jshybugger/mt;
.source "VariableInitializer.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 25
    const/16 v0, 0x7a

    iput v0, p0, Lorg/jshybugger/nt;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 25
    const/16 v0, 0x7a

    iput v0, p0, Lorg/jshybugger/nt;->a:I

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 4

    .prologue
    .line 78
    if-nez p1, :cond_a

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target arg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_a
    iput-object p1, p0, Lorg/jshybugger/nt;->i:Lorg/jshybugger/mt;

    .line 81
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 82
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 119
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 120
    iget-object v0, p0, Lorg/jshybugger/nt;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 121
    iget-object v0, p0, Lorg/jshybugger/nt;->j:Lorg/jshybugger/mt;

    if-eqz v0, :cond_14

    .line 122
    iget-object v0, p0, Lorg/jshybugger/nt;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 125
    :cond_14
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lorg/jshybugger/nt;->j:Lorg/jshybugger/mt;

    .line 97
    if-eqz p1, :cond_7

    .line 98
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 99
    :cond_7
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-static {p1}, Lorg/jshybugger/nt;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lorg/jshybugger/nt;->i:Lorg/jshybugger/mt;

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lorg/jshybugger/nt;->j:Lorg/jshybugger/mt;

    if-eqz v1, :cond_28

    .line 107
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lorg/jshybugger/nt;->j:Lorg/jshybugger/mt;

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jshybugger/nt;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jshybugger/nt;->j:Lorg/jshybugger/mt;

    return-object v0
.end method
