.class public Lorg/jshybugger/dp;
.super Lorg/jshybugger/dm;
.source "DefaultHttpResponse.java"

# interfaces
.implements Lorg/jshybugger/dX;


# instance fields
.field d:Lorg/jshybugger/ea;


# direct methods
.method public constructor <init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/jshybugger/dm;-><init>(Lorg/jshybugger/ec;)V

    .line 35
    if-nez p2, :cond_d

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "status"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_d
    iput-object p2, p0, Lorg/jshybugger/dp;->d:Lorg/jshybugger/ea;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lorg/jshybugger/ec;)Lorg/jshybugger/dX;
    .registers 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/jshybugger/dm;->b(Lorg/jshybugger/ec;)Lorg/jshybugger/dL;

    .line 58
    return-object p0
.end method

.method public synthetic b(Lorg/jshybugger/ec;)Lorg/jshybugger/dL;
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lorg/jshybugger/dp;->a(Lorg/jshybugger/ec;)Lorg/jshybugger/dX;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/jshybugger/ea;)Lorg/jshybugger/dX;
    .registers 4

    .prologue
    .line 48
    if-nez p1, :cond_a

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "status"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_a
    iput-object p1, p0, Lorg/jshybugger/dp;->d:Lorg/jshybugger/ea;

    .line 52
    return-object p0
.end method

.method public final h()Lorg/jshybugger/ea;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jshybugger/dp;->d:Lorg/jshybugger/ea;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-static {p0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "(decodeResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lorg/jshybugger/dn;->c:Lorg/jshybugger/cB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    sget-object v1, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lorg/jshybugger/dm;->a_:Lorg/jshybugger/ec;

    invoke-virtual {v1}, Lorg/jshybugger/ec;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lorg/jshybugger/dp;->d:Lorg/jshybugger/ea;

    invoke-virtual {v1}, Lorg/jshybugger/ea;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-object v1, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0, v0}, Lorg/jshybugger/dp;->a(Ljava/lang/StringBuilder;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
