.class Lorg/qtproject/qt5/android/bindings/QtActivity$3;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/QtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_ministroCallback:Lorg/kde/necessitas/ministro/IMinistroCallback;

.field private m_service:Lorg/kde/necessitas/ministro/IMinistro;

.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 436
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->m_service:Lorg/kde/necessitas/ministro/IMinistro;

    .line 463
    new-instance v0, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/QtActivity$3$1;-><init>(Lorg/qtproject/qt5/android/bindings/QtActivity$3;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->m_ministroCallback:Lorg/kde/necessitas/ministro/IMinistroCallback;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 441
    invoke-static {p2}, Lorg/kde/necessitas/ministro/IMinistro$Stub;->asInterface(Landroid/os/IBinder;)Lorg/kde/necessitas/ministro/IMinistro;

    move-result-object v2

    iput-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->m_service:Lorg/kde/necessitas/ministro/IMinistro;

    .line 443
    :try_start_6
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->m_service:Lorg/kde/necessitas/ministro/IMinistro;

    if-eqz v2, :cond_79

    .line 444
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "required.modules"

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->access$000(Lorg/qtproject/qt5/android/bindings/QtActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 446
    const-string v3, "application.title"

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v2}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v2, "minimum.ministro.api"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string v2, "minimum.qt.version"

    const v3, 0x50100

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const-string v2, "environment.variables"

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v3, v3, Lorg/qtproject/qt5/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 451
    const-string v2, "application.parameters"

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v3, v3, Lorg/qtproject/qt5/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_4d
    const-string v2, "sources"

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->access$100(Lorg/qtproject/qt5/android/bindings/QtActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 453
    const-string v2, "repository"

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->access$200(Lorg/qtproject/qt5/android/bindings/QtActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    if-eqz v2, :cond_72

    .line 455
    const-string v2, "android.themes"

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    iget-object v3, v3, Lorg/qtproject/qt5/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 456
    :cond_72
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->m_service:Lorg/kde/necessitas/ministro/IMinistro;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->m_ministroCallback:Lorg/kde/necessitas/ministro/IMinistroCallback;

    invoke-interface {v2, v3, v1}, Lorg/kde/necessitas/ministro/IMinistro;->requestLoader(Lorg/kde/necessitas/ministro/IMinistroCallback;Landroid/os/Bundle;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_79} :catch_7a

    .line 461
    .end local v1    # "parameters":Landroid/os/Bundle;
    :cond_79
    :goto_79
    return-void

    .line 458
    :catch_7a
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_79
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$3;->m_service:Lorg/kde/necessitas/ministro/IMinistro;

    .line 480
    return-void
.end method
