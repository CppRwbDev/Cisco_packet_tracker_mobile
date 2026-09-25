.class public Lorg/qtproject/qt5/android/bindings/EmailClient;
.super Ljava/lang/Object;
.source "EmailClient.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 22
    move-object v0, p1

    .line 23
    .local v0, "filePathParam":Ljava/lang/String;
    new-instance v1, Lorg/qtproject/qt5/android/bindings/EmailClient$1;

    invoke-direct {v1, p0, v0}, Lorg/qtproject/qt5/android/bindings/EmailClient$1;-><init>(Lorg/qtproject/qt5/android/bindings/EmailClient;Ljava/lang/String;)V

    .line 46
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
