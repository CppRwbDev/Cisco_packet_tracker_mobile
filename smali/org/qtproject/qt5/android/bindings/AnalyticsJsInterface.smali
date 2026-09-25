.class public Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;
.super Ljava/lang/Object;
.source "AnalyticsJsInterface.java"


# static fields
.field private static s_instance:Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

.field private static s_sync:Ljava/lang/Object;


# instance fields
.field private volatile enabled:Z

.field private suspendedTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->s_instance:Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->s_sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->enabled:Z

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->suspendedTimeMillis:J

    return-void
.end method

.method public static instance()Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;
    .registers 2

    .prologue
    .line 27
    sget-object v1, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->s_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_3
    sget-object v0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->s_instance:Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    if-nez v0, :cond_e

    .line 30
    new-instance v0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    invoke-direct {v0}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->s_instance:Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    .line 31
    :cond_e
    sget-object v0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->s_instance:Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "addTrailingComma"    # Z

    .prologue
    .line 36
    const-string v2, "\"%s\":\"%s\"%s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v3, v1

    const/4 v1, 0x1

    aput-object p2, v3, v1

    const/4 v4, 0x2

    if-eqz p3, :cond_17

    const-string v1, ","

    :goto_10
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 36
    .end local v0    # "result":Ljava/lang/String;
    :cond_17
    const-string v1, ""

    goto :goto_10
.end method

.method private static ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    .registers 2

    .prologue
    .line 21
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    .line 22
    .local v0, "a":Lorg/qtproject/qt5/android/bindings/QtActivity;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v1

    .line 23
    .local v1, "ptbr":Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    :goto_a
    return-object v1

    .line 22
    .end local v1    # "ptbr":Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;
    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private sendAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "trackingMethod"    # Ljava/lang/String;
    .param p2, "jsonKVString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    const-string v0, "ANJSI"

    const-string v1, "sendAnalytics() - Analytics enabled? %b"

    new-array v2, v7, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->enabled:Z

    if-eqz v0, :cond_23

    iget-wide v0, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->suspendedTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_24

    .line 47
    :cond_23
    :goto_23
    return-void

    .line 44
    :cond_24
    const-string v0, "{%s}"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "json":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 46
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    const-string v1, "track-analytics"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendMessageToPacketTracerAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method


# virtual methods
.method public enable(Z)V
    .registers 7
    .param p1, "bEnabled"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 108
    const-string v0, "ANJSI"

    const-string v1, "Analytics enabled: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean p1, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->enabled:Z

    .line 110
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 111
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v1

    const-string v2, "analyticsEnabled"

    iget-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->enabled:Z

    if-eqz v0, :cond_2d

    const-string v0, "1"

    :goto_29
    invoke-virtual {v1, v2, v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->setPacketTracerKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2c
    return-void

    .line 111
    :cond_2d
    const-string v0, "0"

    goto :goto_29
.end method

.method public resumeSession()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 91
    iget-wide v4, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->suspendedTimeMillis:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    .line 104
    :goto_9
    return-void

    .line 93
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->suspendedTimeMillis:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 94
    .local v0, "inactiveTimeSec":J
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->suspendedTimeMillis:J

    .line 96
    const-string v2, ""

    .line 97
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "inactiveTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v3, "applySessionInactiveTime"

    invoke-direct {p0, v3, v2}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 101
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v3

    const-string v4, "sessionPaused"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->setPacketTracerKeyValueAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_4c
    const-string v3, "ANJSI"

    const-string v4, "Resuming analytics session after: %d sec"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public suspendSession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->suspendedTimeMillis:J

    .line 83
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 84
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->ptbr()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    const-string v1, "sessionPaused"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->setPacketTracerKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_17
    const-string v0, "ANJSI"

    const-string v1, "Suspending analytics session"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public trackAppFeature(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "interactive"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 73
    const-string v0, ""

    .line 74
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "feature"

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interactive"

    if-eqz p2, :cond_3c

    const-string v1, "1"

    :goto_29
    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "appFeature"

    invoke-direct {p0, v1, v0}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 75
    :cond_3c
    const-string v1, "0"

    goto :goto_29
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I
    .param p5, "interactive"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 52
    const-string v0, ""

    .line 53
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category"

    invoke-direct {p0, v2, p1, v4}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action"

    invoke-direct {p0, v2, p2, v4}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-direct {p0, v2, p3, v4}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interactive"

    if-eqz p5, :cond_85

    const-string v1, "1"

    :goto_72
    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "event"

    invoke-direct {p0, v1, v0}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 57
    :cond_85
    const-string v1, "0"

    goto :goto_72
.end method

.method public trackScreen(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "interactive"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    const-string v0, ""

    .line 65
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenName"

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interactive"

    if-eqz p2, :cond_3c

    const-string v1, "1"

    :goto_29
    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->makeJsonForKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "screen"

    invoke-direct {p0, v1, v0}, Lorg/qtproject/qt5/android/bindings/AnalyticsJsInterface;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 66
    :cond_3c
    const-string v1, "0"

    goto :goto_29
.end method
