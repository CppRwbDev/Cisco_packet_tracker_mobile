.class Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$1;
.super Ljava/lang/Object;
.source "LoginDialogCanvas.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    return-void
.end method
