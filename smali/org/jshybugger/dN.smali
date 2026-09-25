.class public Lorg/jshybugger/dn;
.super Ljava/lang/Object;
.source "DefaultHttpObject.java"

# interfaces
.implements Lorg/jshybugger/dN;


# instance fields
.field c:Lorg/jshybugger/cB;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lorg/jshybugger/cB;->a:Lorg/jshybugger/cB;

    iput-object v0, p0, Lorg/jshybugger/dn;->c:Lorg/jshybugger/cB;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/cB;)V
    .registers 4

    .prologue
    .line 35
    if-nez p1, :cond_a

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "decoderResult"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_a
    iput-object p1, p0, Lorg/jshybugger/dn;->c:Lorg/jshybugger/cB;

    .line 39
    return-void
.end method

.method public final c()Lorg/jshybugger/cB;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/jshybugger/dn;->c:Lorg/jshybugger/cB;

    return-object v0
.end method
