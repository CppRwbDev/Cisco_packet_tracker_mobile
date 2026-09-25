.class Lorg/qtproject/qt5/android/bindings/QtActivity$4;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/QtActivity;->downloadUpgradeMinistro(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    .line 487
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$4;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 491
    :try_start_0
    const-string v3, "market://search?q=pname:org.kde.necessitas.ministro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 492
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 493
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$4;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    const v4, 0xf3ee

    invoke-virtual {v3, v1, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 498
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_15
    return-void

    .line 494
    :catch_16
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$4;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/QtActivity;->access$500(Lorg/qtproject/qt5/android/bindings/QtActivity;)V

    goto :goto_15
.end method
