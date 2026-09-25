.class Lorg/qtproject/qt5/android/QtActivityDelegate$4;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtActivityDelegate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtActivityDelegate;)V
    .registers 2

    .prologue
    .line 780
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 784
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$200(Lorg/qtproject/qt5/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNativeLibrariesDir;->nativeLibrariesDir(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$300()Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-static {}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$400()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    .line 787
    invoke-static {v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$500(Lorg/qtproject/qt5/android/QtActivityDelegate;)Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-static {v1, v2, v3, v0}, Lorg/qtproject/qt5/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 789
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$602(Lorg/qtproject/qt5/android/QtActivityDelegate;Z)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 794
    :goto_21
    return-void

    .line 790
    :catch_22
    move-exception v0

    .line 791
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 792
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->access$200(Lorg/qtproject/qt5/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_21
.end method
