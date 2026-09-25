.class public final Lorg/jshybugger/nA;
.super Lorg/jshybugger/mt;
.source "XmlLiteral.java"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/nz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/nA;->i:Ljava/util/List;

    .line 26
    const/16 v0, 0x91

    iput v0, p0, Lorg/jshybugger/nA;->a:I

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/jshybugger/mt;-><init>(I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/nA;->i:Ljava/util/List;

    .line 26
    const/16 v0, 0x91

    iput v0, p0, Lorg/jshybugger/nA;->a:I

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 84
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 85
    iget-object v0, p0, Lorg/jshybugger/nA;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/nz;

    .line 86
    invoke-virtual {v0, p1}, Lorg/jshybugger/nz;->a(Lorg/jshybugger/nb;)V

    goto :goto_c

    .line 89
    :cond_1c
    return-void
.end method

.method public final a(Lorg/jshybugger/nz;)V
    .registers 3

    .prologue
    .line 65
    invoke-static {p1}, Lorg/jshybugger/nA;->a(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lorg/jshybugger/nA;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1, p0}, Lorg/jshybugger/nz;->c(Lorg/jshybugger/mt;)V

    .line 68
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0xfa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    iget-object v0, p0, Lorg/jshybugger/nA;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/nz;

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jshybugger/nz;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 76
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
