.class Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;
.super Landroid/graphics/Canvas;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/ExtractStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakeCanvas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas$Size;
    }
.end annotation


# instance fields
.field chunkData:[I

.field final synthetic this$0:Lorg/qtproject/qt5/android/ExtractStyle;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/ExtractStyle;)V
    .registers 3

    .prologue
    .line 325
    iput-object p1, p0, Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;->this$0:Lorg/qtproject/qt5/android/ExtractStyle;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;->chunkData:[I

    return-void
.end method


# virtual methods
.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 7

    .prologue
    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_d

    .line 342
    invoke-static {p2}, Lorg/qtproject/qt5/android/ExtractStyle;->extractChunkInfo20([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;->chunkData:[I

    .line 345
    :goto_c
    return-void

    .line 344
    :cond_d
    invoke-static {p2}, Lorg/qtproject/qt5/android/ExtractStyle;->extractChunkInfo([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;->chunkData:[I

    goto :goto_c
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method
