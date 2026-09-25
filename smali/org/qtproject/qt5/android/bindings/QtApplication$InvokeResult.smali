.class public Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;
.super Ljava/lang/Object;
.source "QtApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/QtApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvokeResult"
.end annotation


# instance fields
.field public invoked:Z

.field public methodReturns:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->invoked:Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    return-void
.end method
