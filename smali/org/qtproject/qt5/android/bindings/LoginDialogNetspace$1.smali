.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 90
    .local v0, "b":Landroid/widget/Button;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;

    invoke-direct {v2, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$1;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 108
    .local v1, "b2":Landroid/widget/Button;
    new-instance v2, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;

    invoke-direct {v2, p0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1$2;-><init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method
