.class Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;
.super Ljava/lang/Object;
.source "PacketTracerFrontEndBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendMessageToFrontEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

.field final synthetic val$data1:Ljava/lang/String;

.field final synthetic val$data2:Ljava/lang/String;

.field final synthetic val$data3:Ljava/lang/String;

.field final synthetic val$data4:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 1029
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data1:Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data2:Ljava/lang/String;

    iput-object p5, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data3:Ljava/lang/String;

    iput-object p6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data4:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$type:Ljava/lang/String;

    const-string v1, "fe-vw-quit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1032
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1035
    :goto_14
    return-void

    .line 1034
    :cond_15
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    iget-object v1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data1:Ljava/lang/String;

    iget-object v3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data2:Ljava/lang/String;

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data3:Ljava/lang/String;

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$3;->val$data4:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->sendMessageToWebViewPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
