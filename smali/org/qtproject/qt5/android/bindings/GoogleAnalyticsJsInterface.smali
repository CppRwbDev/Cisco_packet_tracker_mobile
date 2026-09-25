.class public Lorg/qtproject/qt5/android/bindings/GoogleAnalyticsJsInterface;
.super Ljava/lang/Object;
.source "GoogleAnalyticsJsInterface.java"


# static fields
.field private static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lorg/qtproject/qt5/android/bindings/GoogleAnalyticsJsInterface;->enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "categoryId"    # Ljava/lang/String;
    .param p1, "actionId"    # Ljava/lang/String;
    .param p2, "labelId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 43
    sget-boolean v1, Lorg/qtproject/qt5/android/bindings/GoogleAnalyticsJsInterface;->enabled:Z

    if-eqz v1, :cond_33

    .line 45
    const-string v1, "GAJI"

    const-string v2, "send event"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/qtproject/qt5/android/bindings/QtApplication;

    sget-object v2, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->APP_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/QtApplication;->getTracker(Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 48
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 52
    .end local v0    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_33
    return-void
.end method


# virtual methods
.method public enableGA(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 20
    sput-boolean p1, Lorg/qtproject/qt5/android/bindings/GoogleAnalyticsJsInterface;->enabled:Z

    .line 21
    return-void
.end method

.method public sendHit(Ljava/lang/String;)V
    .registers 5
    .param p1, "screenView"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 25
    sget-boolean v1, Lorg/qtproject/qt5/android/bindings/GoogleAnalyticsJsInterface;->enabled:Z

    if-eqz v1, :cond_2a

    .line 27
    const-string v1, "GAJI"

    const-string v2, "send hit"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/qtproject/qt5/android/bindings/QtApplication;

    sget-object v2, Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;->APP_TRACKER:Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;

    invoke-virtual {v1, v2}, Lorg/qtproject/qt5/android/bindings/QtApplication;->getTracker(Lorg/qtproject/qt5/android/bindings/QtApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 33
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 38
    .end local v0    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_2a
    return-void
.end method
