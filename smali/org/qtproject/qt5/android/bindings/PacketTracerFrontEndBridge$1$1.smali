.class Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;
.super Landroid/webkit/WebChromeClient;
.source "PacketTracerFrontEndBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG - "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRACE - "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 262
    :cond_18
    const-string v0, "JPTFB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView Console: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_34
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "### MSG:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 266
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$102(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    :cond_4b
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "### MSG:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "### URL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 268
    :cond_63
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v2, v2, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-static {v2}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$200(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$202(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    :cond_87
    :goto_87
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_89
    const-string v0, "JPTFB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView Console: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 269
    :cond_a6
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "######## JAVASCRIPT EXCEPTION - END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 270
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1$1;->this$1:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$1;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendCrashReport()V

    goto :goto_87
.end method
