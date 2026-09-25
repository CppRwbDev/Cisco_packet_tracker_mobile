.class public Lorg/qtproject/qt5/android/bindings/Const$CanvasConst;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CanvasConst"
.end annotation


# static fields
.field static final AGENT_STRING:Ljava/lang/String; = "CiscoPacketTracerMobile6.1"

.field static final CLIENT_ID:Ljava/lang/String; = "10000000000068"

.field static final CLIENT_REDIRECT_URI:Ljava/lang/String; = "urn:ietf:wg:oauth:2.0:oob"

.field static final CLIENT_RESPONSE_TYPE:Ljava/lang/String; = "code"

.field static final CLIENT_SECRET:Ljava/lang/String; = "M4dmryRGAVAL4GQd0YolKfoyKlg8r02fvNyYPrWQ2jDaF7MmCM2S1clpYcznLMCt"

.field static final PATH_AUTHORIZATION:Ljava/lang/String; = "/login/oauth2/auth"

.field static final PATH_DENY:Ljava/lang/String; = "/login/oauth2/deny"

.field static final PATH_TOKEN_EXCHANGE:Ljava/lang/String; = "/login/oauth2/token"

.field static final URL_SERVER:Ljava/lang/String; = "https://82252856.netacad.com"


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/Const;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/bindings/Const;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/Const;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/Const$CanvasConst;->this$0:Lorg/qtproject/qt5/android/bindings/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
