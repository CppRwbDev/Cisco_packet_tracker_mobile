.class Lorg/qtproject/qt5/android/bindings/FacebookClient$1;
.super Ljava/lang/Object;
.source "FacebookClient.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/FacebookClient;->postPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/FacebookClient;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/FacebookClient;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/FacebookClient;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/FacebookClient$1;->this$0:Lorg/qtproject/qt5/android/bindings/FacebookClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 2
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 41
    return-void
.end method
