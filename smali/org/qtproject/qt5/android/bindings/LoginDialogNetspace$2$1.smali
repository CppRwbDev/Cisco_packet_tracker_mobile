.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$1;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$1;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 188
    return-void
.end method
