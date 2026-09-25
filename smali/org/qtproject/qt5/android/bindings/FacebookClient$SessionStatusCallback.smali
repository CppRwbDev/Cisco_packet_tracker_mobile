.class Lorg/qtproject/qt5/android/bindings/FacebookClient$SessionStatusCallback;
.super Ljava/lang/Object;
.source "FacebookClient.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/FacebookClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/FacebookClient;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt5/android/bindings/FacebookClient;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/FacebookClient$SessionStatusCallback;->this$0:Lorg/qtproject/qt5/android/bindings/FacebookClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt5/android/bindings/FacebookClient;Lorg/qtproject/qt5/android/bindings/FacebookClient$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/qtproject/qt5/android/bindings/FacebookClient;
    .param p2, "x1"    # Lorg/qtproject/qt5/android/bindings/FacebookClient$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/FacebookClient$SessionStatusCallback;-><init>(Lorg/qtproject/qt5/android/bindings/FacebookClient;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 11
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 110
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 111
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "FBlogin"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 112
    .local v1, "login":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 114
    const-string v4, "javascript:shareOnFacebook();"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "u":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "FBlogin"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "login":Ljava/lang/Boolean;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "u":Ljava/lang/String;
    :cond_4b
    return-void
.end method
