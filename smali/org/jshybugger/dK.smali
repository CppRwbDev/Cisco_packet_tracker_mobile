.class final Lorg/jshybugger/dk;
.super Ljava/lang/Object;
.source "DefaultHttpHeaders.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lorg/jshybugger/dk;

.field e:Lorg/jshybugger/dk;

.field f:Lorg/jshybugger/dk;


# direct methods
.method constructor <init>(Lorg/jshybugger/dj;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput p2, p0, Lorg/jshybugger/dk;->a:I

    .line 379
    iput-object p3, p0, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    .line 380
    iput-object p4, p0, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    .line 381
    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    iget-object v1, p0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    iput-object v1, v0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    .line 385
    iget-object v0, p0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    iget-object v1, p0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    iput-object v1, v0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    .line 386
    return-void
.end method

.method final a(Lorg/jshybugger/dk;)V
    .registers 3

    .prologue
    .line 389
    iput-object p1, p0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    .line 390
    iget-object v0, p1, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    iput-object v0, p0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    .line 391
    iget-object v0, p0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    iput-object p0, v0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    .line 392
    iget-object v0, p0, Lorg/jshybugger/dk;->f:Lorg/jshybugger/dk;

    iput-object p0, v0, Lorg/jshybugger/dk;->e:Lorg/jshybugger/dk;

    .line 393
    return-void
.end method

.method public final bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 370
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {p1}, Lorg/jshybugger/dJ;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    iput-object p1, p0, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jshybugger/dk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/dk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
