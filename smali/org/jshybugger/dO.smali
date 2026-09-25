.class public Lorg/jshybugger/do;
.super Lorg/jshybugger/dm;
.source "DefaultHttpRequest.java"

# interfaces
.implements Lorg/jshybugger/dU;


# instance fields
.field private d:Lorg/jshybugger/dM;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jshybugger/ec;Lorg/jshybugger/dM;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/jshybugger/dm;-><init>(Lorg/jshybugger/ec;)V

    .line 37
    if-nez p2, :cond_d

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_d
    if-nez p3, :cond_17

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_17
    iput-object p2, p0, Lorg/jshybugger/do;->d:Lorg/jshybugger/dM;

    .line 44
    iput-object p3, p0, Lorg/jshybugger/do;->e:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/jshybugger/dU;
    .registers 4

    .prologue
    .line 68
    if-nez p1, :cond_a

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_a
    iput-object p1, p0, Lorg/jshybugger/do;->e:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public a(Lorg/jshybugger/ec;)Lorg/jshybugger/dU;
    .registers 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Lorg/jshybugger/dm;->b(Lorg/jshybugger/ec;)Lorg/jshybugger/dL;

    .line 78
    return-object p0
.end method

.method public synthetic b(Lorg/jshybugger/ec;)Lorg/jshybugger/dL;
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lorg/jshybugger/do;->a(Lorg/jshybugger/ec;)Lorg/jshybugger/dU;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lorg/jshybugger/dM;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jshybugger/do;->d:Lorg/jshybugger/dM;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jshybugger/do;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-static {p0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", decodeResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lorg/jshybugger/dn;->c:Lorg/jshybugger/cB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    sget-object v1, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lorg/jshybugger/do;->d:Lorg/jshybugger/dM;

    invoke-virtual {v1}, Lorg/jshybugger/dM;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lorg/jshybugger/do;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lorg/jshybugger/dm;->a_:Lorg/jshybugger/ec;

    invoke-virtual {v1}, Lorg/jshybugger/ec;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    sget-object v1, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, v0}, Lorg/jshybugger/do;->a(Ljava/lang/StringBuilder;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jshybugger/gt;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
