.class Lorg/qtproject/qt5/android/bindings/QtActivity$5;
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
    .line 501
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$5;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtActivity$5;->this$0:Lorg/qtproject/qt5/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->finish()V

    .line 505
    return-void
.end method
