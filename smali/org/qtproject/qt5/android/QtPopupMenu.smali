.class public Lorg/qtproject/qt5/android/QtPopupMenu;
.super Ljava/lang/Object;
.source "QtPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/QtPopupMenu$QtPopupMenuHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt5/android/QtPopupMenu$1;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/qtproject/qt5/android/QtPopupMenu;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/qtproject/qt5/android/QtPopupMenu;
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lorg/qtproject/qt5/android/QtPopupMenu$QtPopupMenuHolder;->access$100()Lorg/qtproject/qt5/android/QtPopupMenu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public showMenu(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 53
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 54
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activityDelegate()Lorg/qtproject/qt5/android/QtActivityDelegate;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/QtActivityDelegate;->onCreatePopupMenu(Landroid/view/Menu;)V

    .line 55
    new-instance v1, Lorg/qtproject/qt5/android/QtPopupMenu$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/QtPopupMenu$1;-><init>(Lorg/qtproject/qt5/android/QtPopupMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 64
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 65
    return-void
.end method
