.class Lorg/qtproject/qt5/android/QtPopupMenu$QtPopupMenuHolder;
.super Ljava/lang/Object;
.source "QtPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/QtPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QtPopupMenuHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/qtproject/qt5/android/QtPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lorg/qtproject/qt5/android/QtPopupMenu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/qtproject/qt5/android/QtPopupMenu;-><init>(Lorg/qtproject/qt5/android/QtPopupMenu$1;)V

    sput-object v0, Lorg/qtproject/qt5/android/QtPopupMenu$QtPopupMenuHolder;->INSTANCE:Lorg/qtproject/qt5/android/QtPopupMenu;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/qtproject/qt5/android/QtPopupMenu;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lorg/qtproject/qt5/android/QtPopupMenu$QtPopupMenuHolder;->INSTANCE:Lorg/qtproject/qt5/android/QtPopupMenu;

    return-object v0
.end method
