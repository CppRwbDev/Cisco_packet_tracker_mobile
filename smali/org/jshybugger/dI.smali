.class public Lorg/jshybugger/di;
.super Lorg/jshybugger/dn;
.source "DefaultHttpContent.java"

# interfaces
.implements Lorg/jshybugger/dw;


# instance fields
.field private final a:Lorg/jshybugger/H;


# direct methods
.method public constructor <init>(Lorg/jshybugger/H;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jshybugger/dn;-><init>()V

    .line 32
    if-nez p1, :cond_d

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_d
    iput-object p1, p0, Lorg/jshybugger/di;->a:Lorg/jshybugger/H;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lorg/jshybugger/H;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/jshybugger/di;->a:Lorg/jshybugger/H;

    return-object v0
.end method

.method public d()Lorg/jshybugger/dw;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jshybugger/di;->a:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    .line 61
    return-object p0
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jshybugger/di;->a:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->t()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/di;->a:Lorg/jshybugger/H;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDecoderResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jshybugger/dn;->c:Lorg/jshybugger/cB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jshybugger/di;->a:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    move-result v0

    return v0
.end method

.method public synthetic w()Lorg/jshybugger/fp;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/jshybugger/di;->d()Lorg/jshybugger/dw;

    move-result-object v0

    return-object v0
.end method
