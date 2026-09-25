.class Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas$Size;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Size"
.end annotation


# instance fields
.field public e:I

.field public s:I

.field final synthetic this$1:Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;II)V
    .registers 4

    .prologue
    .line 330
    iput-object p1, p0, Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas$Size;->this$1:Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput p2, p0, Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas$Size;->s:I

    .line 332
    iput p3, p0, Lorg/qtproject/qt5/android/ExtractStyle$FakeCanvas$Size;->e:I

    .line 333
    return-void
.end method
