.class public Lorg/jshybugger/jt;
.super Ljava/lang/Object;
.source "ChainedProxyAdapter.java"

# interfaces
.implements Lorg/jshybugger/js;


# static fields
.field public static a:Lorg/jshybugger/js;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lorg/jshybugger/jt;

    invoke-direct {v0}, Lorg/jshybugger/jt;-><init>()V

    sput-object v0, Lorg/jshybugger/jt;->a:Lorg/jshybugger/js;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lorg/jshybugger/jE;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lorg/jshybugger/jE;->a:Lorg/jshybugger/jE;

    return-object v0
.end method

.method public final e_()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
