.class public final Lorg/jshybugger/np;
.super Lorg/jshybugger/mt;
.source "ThrowStatement.java"


# instance fields
.field private i:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 22
    const/16 v0, 0x32

    iput v0, p0, Lorg/jshybugger/np;->a:I

    .line 26
    return-void
.end method

.method public constructor <init>(IILorg/jshybugger/mt;)V
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 22
    const/16 v0, 0x32

    iput v0, p0, Lorg/jshybugger/np;->a:I

    .line 47
    invoke-virtual {p0, p3}, Lorg/jshybugger/np;->a(Lorg/jshybugger/mt;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 63
    invoke-static {p1}, Lorg/jshybugger/np;->a(Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lorg/jshybugger/np;->i:Lorg/jshybugger/mt;

    .line 65
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 66
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    iget-object v0, p0, Lorg/jshybugger/np;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 87
    :cond_b
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-static {p1}, Lorg/jshybugger/np;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "throw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lorg/jshybugger/np;->i:Lorg/jshybugger/mt;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jshybugger/np;->i:Lorg/jshybugger/mt;

    return-object v0
.end method
