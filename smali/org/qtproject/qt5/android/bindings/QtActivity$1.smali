.class Lorg/qtproject/qt5/android/bindings/QtActivity$1;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/QtActivity;->loadApplication(Landroid/os/Bundle;)V
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
    .line 367
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$1;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$1;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->finish()V

    .line 371
    return-void
.end method
