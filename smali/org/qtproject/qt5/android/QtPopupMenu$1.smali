.class Lorg/qtproject/qt5/android/QtPopupMenu$1;
.super Ljava/lang/Object;
.source "QtPopupMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtPopupMenu;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtPopupMenu;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtPopupMenu;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtPopupMenu$1;->this$0:Lorg/qtproject/qt5/android/QtPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtNative;->onContextItemSelected(IZ)Z

    move-result v0

    .line 59
    if-eqz v0, :cond_16

    .line 60
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activityDelegate()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 61
    :cond_16
    return v0
.end method
