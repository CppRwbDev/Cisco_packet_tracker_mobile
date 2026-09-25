.class public final Lorg/jshybugger/nl;
.super Lorg/jshybugger/mt;
.source "StringLiteral.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:C


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 22
    const/16 v0, 0x29

    iput v0, p0, Lorg/jshybugger/nl;->a:I

    .line 26
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 22
    const/16 v0, 0x29

    iput v0, p0, Lorg/jshybugger/nl;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a(C)V
    .registers 2

    .prologue
    .line 76
    iput-char p1, p0, Lorg/jshybugger/nl;->j:C

    .line 77
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    .line 94
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    invoke-static {p1}, Lorg/jshybugger/nl;->a(Ljava/lang/Object;)V

    .line 65
    iput-object p1, p0, Lorg/jshybugger/nl;->i:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jshybugger/nl;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lorg/jshybugger/nl;->j:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/nl;->i:Ljava/lang/String;

    iget-char v2, p0, Lorg/jshybugger/nl;->j:C

    invoke-static {v1, v2}, Lorg/jshybugger/lS;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/jshybugger/nl;->j:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jshybugger/nl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()C
    .registers 2

    .prologue
    .line 72
    iget-char v0, p0, Lorg/jshybugger/nl;->j:C

    return v0
.end method
