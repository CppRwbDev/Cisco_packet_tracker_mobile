.class Lorg/qtproject/qt5/android/bindings/JavaKeyboard;
.super Ljava/lang/Object;
.source "JavaKeyboard.java"


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field private caps:Z

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLayoutid:I

.field private mMainActivity:Landroid/app/Activity;

.field private mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private screenHeight:D

.field private shift:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->shift:Z

    .line 28
    iput-boolean v4, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->caps:Z

    .line 36
    new-instance v0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$1;-><init>(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 224
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mMainActivity:Landroid/app/Activity;

    .line 225
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getScreenPixelHeight()I

    move-result v0

    int-to-float v0, v0

    .line 226
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getScreenDpiY()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->screenHeight:D

    .line 227
    iget-wide v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->screenHeight:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_84

    .line 229
    const v0, 0x7f040006

    iput v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mLayoutid:I

    .line 230
    const-string v0, "JAKB"

    const-string v1, "i see you have a small screen, giving you a compact keyboard instead"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_46
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mMainActivity:Landroid/app/Activity;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 235
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/Keyboard;

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mMainActivity:Landroid/app/Activity;

    iget v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mLayoutid:I

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 236
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v4}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 237
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 238
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mMainActivity:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->audioManager:Landroid/media/AudioManager;

    .line 240
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mMainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 241
    return-void

    .line 233
    :cond_84
    const v0, 0x7f040005

    iput v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mLayoutid:I

    goto :goto_46
.end method

.method static synthetic access$000(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->shift:Z

    return v0
.end method

.method static synthetic access$002(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->shift:Z

    return p1
.end method

.method static synthetic access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method static synthetic access$102(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;
    .param p1, "x1"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object p1
.end method

.method static synthetic access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mMainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Z
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->caps:Z

    return v0
.end method

.method static synthetic access$302(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->caps:Z

    return p1
.end method

.method static synthetic access$400(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mOnKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)D
    .registers 3
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->screenHeight:D

    return-wide v0
.end method


# virtual methods
.method public closeKeyboard()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 313
    iput-boolean v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->caps:Z

    .line 314
    iput-boolean v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->shift:Z

    .line 315
    new-instance v0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$3;

    invoke-direct {v0, p0}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$3;-><init>(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)V

    .line 324
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getKbHeightInInches()D
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getScreenDpiY()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public isJavaKeyboardVisible()Z
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public openKeyboardIndex(I)V
    .registers 4
    .param p1, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;-><init>(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;I)V

    .line 304
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method
