.class Lorg/qtproject/qt5/android/bindings/JavaKeyboard$3;
.super Ljava/lang/Object;
.source "JavaKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->closeKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 315
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$3;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$3;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$3;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 320
    const-string v1, "javascript:isKeyboardOpen=false;"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 322
    return-void
.end method
