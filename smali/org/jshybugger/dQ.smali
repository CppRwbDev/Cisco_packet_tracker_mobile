.class public final Lorg/jshybugger/dq;
.super Lorg/jshybugger/di;
.source "DefaultLastHttpContent.java"

# interfaces
.implements Lorg/jshybugger/ed;


# instance fields
.field private final b:Lorg/jshybugger/dJ;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jshybugger/S;->a(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/dq;-><init>(Lorg/jshybugger/H;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/H;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/jshybugger/di;-><init>(Lorg/jshybugger/H;)V

    .line 29
    new-instance v0, Lorg/jshybugger/dr;

    invoke-direct {v0, p0}, Lorg/jshybugger/dr;-><init>(Lorg/jshybugger/dq;)V

    iput-object v0, p0, Lorg/jshybugger/dq;->b:Lorg/jshybugger/dJ;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jshybugger/dq;->b:Lorg/jshybugger/dJ;

    invoke-virtual {v0}, Lorg/jshybugger/dJ;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object v0, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 99
    :cond_2f
    return-void
.end method


# virtual methods
.method public final b()Lorg/jshybugger/dJ;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jshybugger/dq;->b:Lorg/jshybugger/dJ;

    return-object v0
.end method

.method public final bridge synthetic d()Lorg/jshybugger/dw;
    .registers 1

    .prologue
    .line 27
    invoke-super {p0}, Lorg/jshybugger/di;->d()Lorg/jshybugger/dw;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/jshybugger/di;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p0, v0}, Lorg/jshybugger/dq;->a(Ljava/lang/StringBuilder;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic w()Lorg/jshybugger/fp;
    .registers 1

    .prologue
    .line 27
    invoke-super {p0}, Lorg/jshybugger/di;->d()Lorg/jshybugger/dw;

    return-object p0
.end method
