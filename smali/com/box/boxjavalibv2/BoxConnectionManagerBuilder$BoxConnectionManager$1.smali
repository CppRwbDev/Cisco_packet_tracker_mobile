.class Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$1;
.super Ljava/lang/Object;
.source "BoxConnectionManagerBuilder.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->getHttpParams()Lorg/apache/http/params/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;


# direct methods
.method constructor <init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$1;->this$1:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 3
    .param p1, "httpRoute"    # Lorg/apache/http/conn/routing/HttpRoute;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager$1;->this$1:Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    invoke-static {v0}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;->access$500(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;)I

    move-result v0

    return v0
.end method
