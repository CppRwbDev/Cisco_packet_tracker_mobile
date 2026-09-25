.class Lorg/qtproject/qt5/android/QtPopupMenu14$2;
.super Ljava/lang/Object;
.source "QtPopupMenu14.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtPopupMenu14;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtPopupMenu14;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtPopupMenu14;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtPopupMenu14$2;->this$0:Lorg/qtproject/qt5/android/QtPopupMenu14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 4

    .prologue
    .line 64
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activityDelegate()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 65
    return-void
.end method
