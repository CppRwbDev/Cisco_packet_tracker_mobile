.class Lorg/qtproject/qt5/android/QtPopupMenu14$QtPopupMenu14Holder;
.super Ljava/lang/Object;
.source "QtPopupMenu14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/QtPopupMenu14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QtPopupMenu14Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/qtproject/qt5/android/QtPopupMenu14;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lorg/qtproject/qt5/android/QtPopupMenu14;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/qtproject/qt5/android/QtPopupMenu14;-><init>(Lorg/qtproject/qt5/android/QtPopupMenu14$1;)V

    sput-object v0, Lorg/qtproject/qt5/android/QtPopupMenu14$QtPopupMenu14Holder;->INSTANCE:Lorg/qtproject/qt5/android/QtPopupMenu14;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/qtproject/qt5/android/QtPopupMenu14;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lorg/qtproject/qt5/android/QtPopupMenu14$QtPopupMenu14Holder;->INSTANCE:Lorg/qtproject/qt5/android/QtPopupMenu14;

    return-object v0
.end method
