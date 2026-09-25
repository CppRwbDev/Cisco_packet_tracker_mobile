.class Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;
.super Landroid/content/BroadcastReceiver;
.source "QtNetworkReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastReceiverPrivate"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$1;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->access$000()V

    .line 57
    return-void
.end method
