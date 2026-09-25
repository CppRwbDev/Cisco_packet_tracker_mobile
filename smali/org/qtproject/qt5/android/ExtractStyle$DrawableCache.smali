.class Lorg/qtproject/qt5/android/ExtractStyle$DrawableCache;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/ExtractStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableCache"
.end annotation


# instance fields
.field drawable:Ljava/lang/Object;

.field object:Lorg/json/JSONObject;

.field final synthetic this$0:Lorg/qtproject/qt5/android/ExtractStyle;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/ExtractStyle;Lorg/json/JSONObject;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 801
    iput-object p1, p0, Lorg/qtproject/qt5/android/ExtractStyle$DrawableCache;->this$0:Lorg/qtproject/qt5/android/ExtractStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p2, p0, Lorg/qtproject/qt5/android/ExtractStyle$DrawableCache;->object:Lorg/json/JSONObject;

    .line 803
    iput-object p3, p0, Lorg/qtproject/qt5/android/ExtractStyle$DrawableCache;->drawable:Ljava/lang/Object;

    .line 804
    return-void
.end method
