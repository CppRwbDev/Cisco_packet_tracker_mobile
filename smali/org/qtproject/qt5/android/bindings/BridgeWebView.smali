.class Lorg/qtproject/qt5/android/bindings/BridgeWebView;
.super Landroid/webkit/WebView;
.source "BridgeWebView.java"


# static fields
.field private static final EXECUTE_JS:I = 0xc2


# instance fields
.field hasIntercepted:Z

.field imm:Landroid/view/inputmethod/InputMethodManager;

.field initFailed:Z

.field sendMessageMethod:Ljava/lang/reflect/Method;

.field webViewCore:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->initFailed:Z

    .line 20
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->hasIntercepted:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/qtproject/qt5/android/bindings/QtActivity;)V
    .registers 4
    .param p1, "a"    # Lorg/qtproject/qt5/android/bindings/QtActivity;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->initFailed:Z

    .line 20
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->hasIntercepted:Z

    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->setOverScrollMode(I)V

    .line 30
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 31
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 32
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->initReflection()V

    .line 33
    return-void
.end method

.method private initReflection()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 72
    move-object v3, p0

    .line 73
    .local v3, "webViewObject":Lorg/qtproject/qt5/android/bindings/BridgeWebView;
    const-class v2, Landroid/webkit/WebView;

    .line 75
    .local v2, "webViewClass":Ljava/lang/Class;
    :try_start_4
    const-string v4, "mProvider"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 76
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "webViewObject":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_15} :catch_7d

    move-result-object v2

    .line 84
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "webViewObject":Ljava/lang/Object;
    :goto_16
    :try_start_16
    const-string v4, "mWebViewCore"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 85
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->webViewCore:Ljava/lang/Object;

    .line 87
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->webViewCore:Ljava/lang/Object;

    if-eqz v4, :cond_60

    .line 88
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->webViewCore:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sendMessage"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/Message;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    .line 89
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessageMethod-----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_60
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->hasIntercepted:Z
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_63} :catch_6a
    .catchall {:try_start_16 .. :try_end_63} :catchall_75

    .line 98
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_69

    .line 99
    iput-boolean v9, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->hasIntercepted:Z

    .line 102
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_69
    :goto_69
    return-void

    .line 93
    :catch_6a
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    :try_start_6c
    iput-boolean v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->hasIntercepted:Z
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_75

    .line 98
    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_69

    .line 99
    iput-boolean v9, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->hasIntercepted:Z

    goto :goto_69

    .line 98
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_75
    move-exception v4

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_7c

    .line 99
    iput-boolean v9, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->hasIntercepted:Z

    :cond_7c
    throw v4

    .line 79
    :catch_7d
    move-exception v4

    goto :goto_16
.end method


# virtual methods
.method public fixLayout()V
    .registers 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->getScrollX()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->getScrollY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->onScrollChanged(IIII)V

    .line 53
    return-void
.end method

.method public loadScript(Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->initFailed:Z

    if-nez v1, :cond_b

    .line 37
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->initReflection()V

    .line 40
    :cond_b
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_23

    .line 42
    const/4 v1, 0x0

    const/16 v2, 0xc2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 44
    .local v0, "execJsMessage":Landroid/os/Message;
    :try_start_16
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->sendMessageMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->webViewCore:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_23} :catch_24

    .line 49
    .end local v0    # "execJsMessage":Landroid/os/Message;
    :cond_23
    :goto_23
    return-void

    .line 45
    .restart local v0    # "execJsMessage":Landroid/os/Message;
    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 62
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BridgeWebView;->fixLayout()V

    .line 67
    :cond_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
