.class Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;
.super Ljava/lang/Object;
.source "TwitterApiJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;->startActivity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;

.field final synthetic val$activity:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;->this$0:Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;->val$activity:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 23
    const-string v1, "TAJI"

    const-string v2, "start activity"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    const-class v2, Lorg/qtproject/qt5/android/bindings/TwitterClient;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTIVITY"

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;->val$activity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v1, "MESSAGE"

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/TwitterApiJsInterface$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
