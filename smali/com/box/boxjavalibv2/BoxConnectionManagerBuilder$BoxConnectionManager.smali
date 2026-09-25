.class public Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;
.super Ljava/lang/Object;
.source "BoxConnectionManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoxConnectionManager"
.end annotation


# instance fields
.field private connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private final idleTimeThreshold:J

.field private final maxConnection:I

.field private final maxConnectionPerRoute:I

.field final synthetic this$0:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;

.field private final timePeriodCleanUpIdleConnection:J


# direct methods
.method private constructor <init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)V
    .registers 5
    .param p2, "builder"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->this$0:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->access$100(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)I

    move-result v0

    iput v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->maxConnection:I

    .line 73
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->access$200(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)I

    move-result v0

    iput v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->maxConnectionPerRoute:I

    .line 74
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->access$300(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->timePeriodCleanUpIdleConnection:J

    .line 75
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->access$400(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->idleTimeThreshold:J

    .line 76
    invoke-direct {p0}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->createConnectionManager()V

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;
    .param p2, "x1"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;
    .param p3, "x2"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$1;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;-><init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    .prologue
    .line 63
    iget v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->maxConnectionPerRoute:I

    return v0
.end method

.method static synthetic access$600(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->timePeriodCleanUpIdleConnection:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->idleTimeThreshold:J

    return-wide v0
.end method

.method private createConnectionManager()V
    .registers 6

    .prologue
    .line 84
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 85
    .local v0, "schemeReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 86
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p0}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 88
    iget-object v1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {p0, v1}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->monitorConnection(Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 89
    return-void
.end method

.method private getHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 93
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    iget v1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->maxConnection:I

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    new-instance v1, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$1;

    invoke-direct {v1, p0}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$1;-><init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 101
    return-object v0
.end method

.method private monitorConnection(Lorg/apache/http/conn/ClientConnectionManager;)V
    .registers 4
    .param p1, "connManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    .line 105
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 106
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/http/conn/ClientConnectionManager;>;"
    const/4 p1, 0x0

    .line 107
    new-instance v0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;

    invoke-direct {v0, p0, v1}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$2;-><init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;Ljava/lang/ref/WeakReference;)V

    .line 131
    .local v0, "monitorThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    return-void
.end method


# virtual methods
.method public getMonitoredRestClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 4

    .prologue
    .line 80
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {p0}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method
