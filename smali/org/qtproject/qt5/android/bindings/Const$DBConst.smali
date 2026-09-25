.class public Lorg/qtproject/qt5/android/bindings/Const$DBConst;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBConst"
.end annotation


# static fields
.field static final ACCESS_KEY_NAME:Ljava/lang/String; = "ACCESS_KEY"

.field static final ACCESS_SECRET_NAME:Ljava/lang/String; = "ACCESS_SECRET"

.field static final ACCOUNT_PREFS_NAME:Ljava/lang/String; = "DBAuth"

.field static final APP_KEY:Ljava/lang/String; = "46ojolbsuwqtxto"

.field static final APP_SECRET:Ljava/lang/String; = "uzg2lmwqy3k3ur0"

.field static final TAG:Ljava/lang/String; = "DropBoxApiClient"

.field static final USE_OAUTH1:Z


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/Const;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/bindings/Const;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/Const;

    .prologue
    .line 27
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/Const$DBConst;->this$0:Lorg/qtproject/qt5/android/bindings/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
