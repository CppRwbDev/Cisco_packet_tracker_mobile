.class final Lorg/jshybugger/x;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Lorg/jshybugger/ap;


# instance fields
.field private synthetic c:Lorg/jshybugger/ao;

.field private synthetic d:Lorg/jshybugger/aj;

.field private synthetic e:Ljava/net/SocketAddress;

.field private synthetic f:Ljava/net/SocketAddress;

.field private synthetic g:Lorg/jshybugger/aM;


# direct methods
.method constructor <init>(Lorg/jshybugger/w;Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V
    .registers 7

    .prologue
    .line 143
    iput-object p2, p0, Lorg/jshybugger/x;->c:Lorg/jshybugger/ao;

    iput-object p3, p0, Lorg/jshybugger/x;->d:Lorg/jshybugger/aj;

    iput-object p4, p0, Lorg/jshybugger/x;->e:Ljava/net/SocketAddress;

    iput-object p5, p0, Lorg/jshybugger/x;->f:Ljava/net/SocketAddress;

    iput-object p6, p0, Lorg/jshybugger/x;->g:Lorg/jshybugger/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/jshybugger/fN;)V
    .registers 7

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jshybugger/x;->c:Lorg/jshybugger/ao;

    iget-object v1, p0, Lorg/jshybugger/x;->d:Lorg/jshybugger/aj;

    iget-object v2, p0, Lorg/jshybugger/x;->e:Ljava/net/SocketAddress;

    iget-object v3, p0, Lorg/jshybugger/x;->f:Ljava/net/SocketAddress;

    iget-object v4, p0, Lorg/jshybugger/x;->g:Lorg/jshybugger/aM;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jshybugger/w;->a(Lorg/jshybugger/ao;Lorg/jshybugger/aj;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/jshybugger/aM;)V

    return-void
.end method
