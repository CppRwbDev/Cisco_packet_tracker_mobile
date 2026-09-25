.class public Lorg/qtproject/qt5/android/bindings/Const$BoxConst;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoxConst"
.end annotation


# static fields
.field static final AUTH_KEY:Ljava/lang/String; = "authdatastring"

.field static final AUTH_REQUEST:I = 0x1

.field static final CLIENT_ID:Ljava/lang/String; = "j77x7mbkzjug0i1oiz6s1z4rasvddo5w"

.field static final CLIENT_SECRET:Ljava/lang/String; = "VIsFNi7jG2uLNTHY84PFgw06KEgoIWGi"

.field static final DOWNLOAD_REQUEST:I = 0x3

.field static final REDIRECT_URL:Ljava/lang/String; = ""

.field static final SHARED_PREF_NAME:Ljava/lang/String; = "boxAuth"

.field static final UPLOAD_REQUEST:I = 0x2


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/Const;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/bindings/Const;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/Const;

    .prologue
    .line 16
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/Const$BoxConst;->this$0:Lorg/qtproject/qt5/android/bindings/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
