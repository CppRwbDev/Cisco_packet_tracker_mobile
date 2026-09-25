.class final Lorg/qtproject/qt5/android/QtNative$1;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtNative;->runQtOnUiThread(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .prologue
    .line 188
    iput-wide p1, p0, Lorg/qtproject/qt5/android/QtNative$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/qtproject/qt5/android/QtNative$1;->val$id:J

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/QtNative;->onAndroidUiThread(J)V

    .line 192
    return-void
.end method
