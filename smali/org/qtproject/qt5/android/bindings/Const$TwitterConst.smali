.class public Lorg/qtproject/qt5/android/bindings/Const$TwitterConst;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/bindings/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwitterConst"
.end annotation


# static fields
.field static final CALLBACK_URL:Ljava/lang/String; = "oauth://callback"

.field static final CONSUMER_KEY:Ljava/lang/String; = "kYssLUBYAq4Bbq3W339wZ4RhT"

.field static final CONSUMER_SECRET:Ljava/lang/String; = "SEheD4oDvuW1undIqBphbrG5LBMF3qbajF1MVQ3Mz4cUlUP7It"

.field static final IEXTRA_AUTH_URL:Ljava/lang/String; = "auth_url"

.field static final IEXTRA_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field static final IEXTRA_OAUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field static final PREFERENCE_NAME:Ljava/lang/String; = "twitter_oauth"

.field static final PREF_KEY_SECRET:Ljava/lang/String; = "oauth_token_secret"

.field static final PREF_KEY_TOKEN:Ljava/lang/String; = "oauth_token"


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/Const;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/bindings/Const;)V
    .registers 2
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/Const;

    .prologue
    .line 4
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/Const$TwitterConst;->this$0:Lorg/qtproject/qt5/android/bindings/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
