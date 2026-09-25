.class public final Lorg/jshybugger/ic;
.super Ljava/lang/Object;
.source "SelfSignedMitmManager.java"

# interfaces
.implements Lorg/jshybugger/jC;


# instance fields
.field private a:Lorg/jshybugger/id;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/jshybugger/id;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jshybugger/id;-><init>(Z)V

    iput-object v0, p0, Lorg/jshybugger/ic;->a:Lorg/jshybugger/id;

    return-void
.end method


# virtual methods
.method public final a()Ljavax/net/ssl/SSLEngine;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 37
    iget-object v0, p0, Lorg/jshybugger/ic;->a:Lorg/jshybugger/id;

    invoke-virtual {v0}, Lorg/jshybugger/id;->e_()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 39
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    .line 40
    return-object v0
.end method

.method public final b()Ljavax/net/ssl/SSLEngine;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jshybugger/ic;->a:Lorg/jshybugger/id;

    invoke-virtual {v0}, Lorg/jshybugger/id;->e_()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    .line 47
    return-object v0
.end method
