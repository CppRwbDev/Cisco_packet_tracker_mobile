.class Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;
.super Ljava/lang/Object;
.source "JavaKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->openKeyboardIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    iput p2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 263
    iget v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    if-nez v1, :cond_66

    .line 265
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/Keyboard;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040005

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 266
    const-string v1, "JAKB"

    const-string v2, "lower keyboard"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_24
    :goto_24
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$400(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 297
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 299
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 300
    const-string v1, "javascript:isKeyboardOpen=true;"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 302
    return-void

    .line 268
    .end local v0    # "url":Ljava/lang/String;
    :cond_66
    iget v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    if-ne v1, v5, :cond_82

    .line 270
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/Keyboard;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040007

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_24

    .line 272
    :cond_82
    iget v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9f

    .line 274
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/Keyboard;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040003

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_24

    .line 276
    :cond_9f
    iget v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c4

    .line 278
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/Keyboard;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04000a

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 279
    const-string v1, "JAKB"

    const-string v2, "upper keyboard"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 281
    :cond_c4
    iget v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e9

    .line 283
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/Keyboard;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040006

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 284
    const-string v1, "JAKB"

    const-string v2, "lower no numbers keyboard"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 286
    :cond_e9
    iget v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_10e

    .line 288
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/Keyboard;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04000b

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 289
    const-string v1, "JAKB"

    const-string v2, "upper no numbers keyboard"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 291
    :cond_10e
    iget v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->val$index:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_24

    .line 293
    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v1}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$100(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/Keyboard;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/JavaKeyboard$2;->this$0:Lorg/qtproject/qt5/android/bindings/JavaKeyboard;

    invoke-static {v3}, Lorg/qtproject/qt5/android/bindings/JavaKeyboard;->access$200(Lorg/qtproject/qt5/android/bindings/JavaKeyboard;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040008

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 294
    const-string v1, "JAKB"

    const-string v2, "number and symbol keyboard"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24
.end method
