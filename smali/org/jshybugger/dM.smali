.class public abstract Lorg/jshybugger/dm;
.super Lorg/jshybugger/dn;
.source "DefaultHttpMessage.java"

# interfaces
.implements Lorg/jshybugger/dL;


# instance fields
.field a_:Lorg/jshybugger/ec;

.field public final b:Lorg/jshybugger/dJ;


# direct methods
.method protected constructor <init>(Lorg/jshybugger/ec;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/jshybugger/dn;-><init>()V

    .line 28
    new-instance v0, Lorg/jshybugger/dj;

    invoke-direct {v0}, Lorg/jshybugger/dj;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/dm;->b:Lorg/jshybugger/dJ;

    .line 34
    if-nez p1, :cond_14

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_14
    iput-object p1, p0, Lorg/jshybugger/dm;->a_:Lorg/jshybugger/ec;

    .line 38
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/StringBuilder;)V
    .registers 5

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jshybugger/dm;->b:Lorg/jshybugger/dJ;

    invoke-virtual {v0}, Lorg/jshybugger/dJ;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    sget-object v0, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 83
    :cond_2f
    return-void
.end method

.method public b(Lorg/jshybugger/ec;)Lorg/jshybugger/dL;
    .registers 4

    .prologue
    .line 69
    if-nez p1, :cond_a

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_a
    iput-object p1, p0, Lorg/jshybugger/dm;->a_:Lorg/jshybugger/ec;

    .line 73
    return-object p0
.end method

.method public final f()Lorg/jshybugger/dJ;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jshybugger/dm;->b:Lorg/jshybugger/dJ;

    return-object v0
.end method

.method public final g()Lorg/jshybugger/ec;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jshybugger/dm;->a_:Lorg/jshybugger/ec;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {p0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "(version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lorg/jshybugger/dm;->a_:Lorg/jshybugger/ec;

    invoke-virtual {v1}, Lorg/jshybugger/ec;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", keepAlive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {p0}, Lorg/jshybugger/dJ;->a(Lorg/jshybugger/dL;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    sget-object v1, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0, v0}, Lorg/jshybugger/dm;->a(Ljava/lang/StringBuilder;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
