.class Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$4;
.super Ljava/lang/Object;
.source "PacketTracerFrontEndBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->reloadWebView()V
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
    .line 1051
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$4;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1053
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$4;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$000(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 1054
    return-void
.end method
