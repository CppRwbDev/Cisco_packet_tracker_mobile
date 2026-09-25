.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$3;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;)V
    .registers 2
    .param p1, "this$2"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$3;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$3;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->Login()V

    .line 277
    return-void
.end method
