.class Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$1;
.super Ljava/lang/Object;
.source "LoginDialogCommunity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity$1;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogCommunity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    return-void
.end method
