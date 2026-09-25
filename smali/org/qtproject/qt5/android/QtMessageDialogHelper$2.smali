.class Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtMessageDialogHelper;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)V
    .registers 2

    .prologue
    .line 385
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 389
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt5/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 390
    :cond_1d
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->reset()V

    .line 391
    return-void
.end method
