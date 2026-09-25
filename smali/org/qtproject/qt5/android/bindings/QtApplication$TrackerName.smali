.class final enum Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;
.super Ljava/lang/Enum;
.source "QtApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/QtApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TrackerName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

.field public static final enum APP_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

.field public static final enum GLOBAL_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    const-string v1, "APP_TRACKER"

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->APP_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    .line 93
    new-instance v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    const-string v1, "GLOBAL_TRACKER"

    invoke-direct {v0, v1, v3}, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->GLOBAL_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    sget-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->APP_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    aput-object v1, v0, v2

    sget-object v1, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->GLOBAL_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    aput-object v1, v0, v3

    sput-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->$VALUES:[Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    return-object v0
.end method

.method public static values()[Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->$VALUES:[Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    invoke-virtual {v0}, [Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    return-object v0
.end method
