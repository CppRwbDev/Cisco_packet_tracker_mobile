.class Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/QtActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugWaitRunnable"
.end annotation


# instance fields
.field private socket:Landroid/net/LocalServerSocket;

.field final synthetic this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

.field public wasFailure:Z


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/QtActivityDelegate;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->this$0:Lorg/qtproject/qt5/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->socket:Landroid/net/LocalServerSocket;

    .line 492
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 503
    :try_start_1
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->socket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    .line 504
    const-string v0, "Debug socket accepted"

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 505
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 506
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 507
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    :goto_3e
    const/16 v3, 0x96

    if-ge v0, v3, :cond_62

    .line 511
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/qtproject/qt5/android/QtActivityDelegate;->debugLog(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    .line 530
    :cond_62
    :goto_62
    return-void

    .line 516
    :cond_63
    invoke-virtual {v1}, Landroid/net/LocalSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->wasFailure:Z
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_6c} :catch_98

    goto :goto_62

    .line 522
    :catch_6d
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    iput-boolean v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->wasFailure:Z

    .line 525
    const-string v1, "Qt JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start debugger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 520
    :cond_90
    const-wide/16 v4, 0xc8

    :try_start_92
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_6d
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_95} :catch_98

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 526
    :catch_98
    move-exception v0

    .line 527
    iput-boolean v6, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->wasFailure:Z

    .line 528
    const-string v1, "Qt JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start debugger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method public shutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->wasFailure:Z

    .line 536
    :try_start_3
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtActivityDelegate$DebugWaitRunnable;->socket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 538
    :goto_8
    return-void

    .line 537
    :catch_9
    move-exception v0

    goto :goto_8
.end method
