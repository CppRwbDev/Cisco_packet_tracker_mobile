.class final Lorg/jshybugger/t;
.super Ljava/lang/Object;
.source "AbstractBootstrap.java"

# interfaces
.implements Lorg/jshybugger/ap;


# instance fields
.field private synthetic c:Lorg/jshybugger/aj;

.field private synthetic d:Ljava/net/SocketAddress;

.field private synthetic e:Lorg/jshybugger/aM;


# direct methods
.method constructor <init>(Lorg/jshybugger/s;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 5

    .prologue
    .line 276
    iput-object p2, p0, Lorg/jshybugger/t;->c:Lorg/jshybugger/aj;

    iput-object p3, p0, Lorg/jshybugger/t;->d:Ljava/net/SocketAddress;

    iput-object p4, p0, Lorg/jshybugger/t;->e:Lorg/jshybugger/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/jshybugger/fN;)V
    .registers 5

    .prologue
    .line 276
    check-cast p1, Lorg/jshybugger/ao;

    iget-object v0, p0, Lorg/jshybugger/t;->c:Lorg/jshybugger/aj;

    iget-object v1, p0, Lorg/jshybugger/t;->d:Ljava/net/SocketAddress;

    iget-object v2, p0, Lorg/jshybugger/t;->e:Lorg/jshybugger/aM;

    invoke-static {p1, v0, v1, v2}, Lorg/jshybugger/s;->a(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    return-void
.end method
