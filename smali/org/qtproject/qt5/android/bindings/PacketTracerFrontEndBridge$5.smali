.class Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$5;
.super Ljava/lang/Object;
.source "PacketTracerFrontEndBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->reloadWebView2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 1061
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$5;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 1063
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$5;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setSystemUiVisibility(I)V

    .line 1064
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$5;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1065
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/QtActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1066
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1067
    return-void
.end method
