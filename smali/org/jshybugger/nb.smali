.class public final Lorg/jshybugger/nB;
.super Lorg/jshybugger/mS;
.source "XmlMemberGet.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jshybugger/mS;-><init>()V

    .line 22
    const/16 v0, 0x8f

    iput v0, p0, Lorg/jshybugger/nB;->a:I

    .line 26
    return-void
.end method


# virtual methods
.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-static {p1}, Lorg/jshybugger/nB;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lorg/jshybugger/nB;->k()Lorg/jshybugger/mt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lorg/jshybugger/nB;->a()I

    move-result v1

    invoke-static {v1}, Lorg/jshybugger/nB;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lorg/jshybugger/nB;->l()Lorg/jshybugger/mt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
