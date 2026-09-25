.class Lorg/qtproject/qt5/android/QtMessageDialogHelper$1$1;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1$1;->this$1:Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 226
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1$1;->this$1:Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt5/android/QtMessageDialogHelper;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/QtMessageDialogHelper;->handler()J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/qtproject/qt5/android/QtNativeDialogHelper;->dialogResult(JI)V

    .line 227
    return-void
.end method
