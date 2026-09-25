.class Lorg/qtproject/qt5/android/bindings/BoxApiClient$1;
.super Ljava/lang/Object;
.source "BoxApiClient.java"

# interfaces
.implements Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/BoxApiClient;->authenticate(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/BoxApiClient;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/BoxApiClient;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/BoxApiClient;

    .prologue
    .line 193
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxApiClient$1;->this$0:Lorg/qtproject/qt5/android/bindings/BoxApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/box/boxjavalibv2/dao/IAuthData;)V
    .registers 3
    .param p1, "newAuthData"    # Lcom/box/boxjavalibv2/dao/IAuthData;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxApiClient$1;->this$0:Lorg/qtproject/qt5/android/bindings/BoxApiClient;

    check-cast p1, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .end local p1    # "newAuthData":Lcom/box/boxjavalibv2/dao/IAuthData;
    invoke-static {v0, p1}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->access$000(Lorg/qtproject/qt5/android/bindings/BoxApiClient;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V

    .line 198
    return-void
.end method
