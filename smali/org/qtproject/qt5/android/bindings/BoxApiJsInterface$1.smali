.class Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$1;
.super Ljava/lang/Object;
.source "BoxApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;->startBoxApiClient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

.field final synthetic val$activityParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$1;->this$0:Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$1;->val$activityParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    const-class v2, Lorg/qtproject/qt5/android/bindings/BoxApiClient;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTIVITY"

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/BoxApiJsInterface$1;->val$activityParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
