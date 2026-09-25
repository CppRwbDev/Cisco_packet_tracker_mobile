.class public Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;
.super Lcom/box/boxjavalibv2/BoxConfigBuilder;
.source "BoxAndroidConfigBuilder.java"


# static fields
.field private static final COMBINED_VERSION:Ljava/lang/String; = "java_%s,android_%s"

.field private static final USER_AGENT:Ljava/lang/String; = "BoxAndroidLibraryV2"

.field private static final VERSION_NUMBER:Ljava/lang/String; = "v3.0.4"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/box/boxjavalibv2/BoxConfigBuilder;-><init>()V

    .line 17
    const-string v0, "BoxAndroidLibraryV2"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;->setUserAgent(Ljava/lang/String;)V

    .line 18
    invoke-super {p0}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v3.0.4"

    invoke-static {v0, v1}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;->getCombinedSdkVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;->setVersion(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private static getCombinedSdkVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "javaVersion"    # Ljava/lang/String;
    .param p1, "androidVersion"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "java_%s,android_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
