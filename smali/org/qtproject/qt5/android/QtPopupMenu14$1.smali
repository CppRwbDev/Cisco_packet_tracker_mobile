.class Lorg/qtproject/qt5/android/QtPopupMenu14$1;
.super Ljava/lang/Object;
.source "QtPopupMenu14.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
    .line 55
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtPopupMenu14$1;->this$0:Lorg/qtproject/qt5/android/QtPopupMenu14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 58
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activityDelegate()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt5/android/QtActivityDelegate;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
