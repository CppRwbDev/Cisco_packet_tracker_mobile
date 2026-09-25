.class public Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;
.super Ljava/lang/Object;
.source "QtNetworkReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtNetworkReceiver"

.field private static m_broadcastReceiver:Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

.field private static final m_lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_broadcastReceiver:Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 44
    invoke-static {}, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->activeNetworkInfoChanged()V

    return-void
.end method

.method private static native activeNetworkInfoChanged()V
.end method

.method public static getConnectivityManager(Landroid/app/Activity;)Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static registerReceiver(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 64
    sget-object v1, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_3
    sget-object v0, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_broadcastReceiver:Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

    if-nez v0, :cond_1b

    .line 66
    new-instance v0, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;-><init>(Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$1;)V

    sput-object v0, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_broadcastReceiver:Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    sget-object v2, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_broadcastReceiver:Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :cond_1b
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public static unregisterReceiver(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 75
    sget-object v1, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_3
    sget-object v0, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_broadcastReceiver:Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

    if-nez v0, :cond_9

    .line 77
    monitor-exit v1

    .line 81
    :goto_8
    return-void

    .line 79
    :cond_9
    sget-object v0, Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver;->m_broadcastReceiver:Lorg/qtproject/qt5/android/bearer/QtNetworkReceiver$BroadcastReceiverPrivate;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
