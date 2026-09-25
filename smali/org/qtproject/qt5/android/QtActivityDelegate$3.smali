.class Lorg/qtproject/qt5/android/QtActivityDelegate$3;
.super Landroid/os/ResultReceiver;
.source "QtActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtActivityDelegate;->hideSoftwareKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/QtActivityDelegate;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 350
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 353
    packed-switch p1, :pswitch_data_1a

    .line 363
    :goto_3
    return-void

    .line 356
    :pswitch_4
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    goto :goto_3

    .line 360
    :pswitch_f
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt5/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    goto :goto_3

    .line 353
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_f
        :pswitch_4
        :pswitch_f
    .end packed-switch
.end method
