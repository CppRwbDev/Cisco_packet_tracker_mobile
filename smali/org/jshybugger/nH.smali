.class public final Lorg/jshybugger/nh;
.super Lorg/jshybugger/mt;
.source "RegExpLiteral.java"


# instance fields
.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 21
    const/16 v0, 0x30

    iput v0, p0, Lorg/jshybugger/nh;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 21
    const/16 v0, 0x30

    iput v0, p0, Lorg/jshybugger/nh;->a:I

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/nb;)V
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    .line 77
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    invoke-static {p1}, Lorg/jshybugger/nh;->a(Ljava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lorg/jshybugger/nh;->i:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lorg/jshybugger/nh;->j:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/jshybugger/nh;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/nh;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jshybugger/nh;->j:Ljava/lang/String;

    if-nez v0, :cond_2e

    const-string v0, ""

    :goto_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    iget-object v0, p0, Lorg/jshybugger/nh;->j:Ljava/lang/String;

    goto :goto_25
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jshybugger/nh;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jshybugger/nh;->j:Ljava/lang/String;

    return-object v0
.end method
