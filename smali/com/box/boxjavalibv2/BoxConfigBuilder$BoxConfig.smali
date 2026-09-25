.class public Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;
.super Ljava/lang/Object;
.source "BoxConfigBuilder.java"

# interfaces
.implements Lcom/box/boxjavalibv2/IBoxConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxjavalibv2/BoxConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoxConfig"
.end annotation


# instance fields
.field private final mApiUrlAuthority:Ljava/lang/String;

.field private final mApiUrlPath:Ljava/lang/String;

.field private final mApiUrlScheme:Ljava/lang/String;

.field private final mDownloadUrlAuthority:Ljava/lang/String;

.field private final mDownloadUrlPath:Ljava/lang/String;

.field private final mDownloadUrlScheme:Ljava/lang/String;

.field private final mOAuthApiUrlPath:Ljava/lang/String;

.field private final mOAuthUrlAuthority:Ljava/lang/String;

.field private final mOAuthUrlScheme:Ljava/lang/String;

.field private final mOAuthWebUrlPath:Ljava/lang/String;

.field private final mUploadUrlAuthority:Ljava/lang/String;

.field private final mUploadUrlPath:Ljava/lang/String;

.field private final mUploadUrlScheme:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/box/boxjavalibv2/BoxConfigBuilder;


# direct methods
.method private constructor <init>(Lcom/box/boxjavalibv2/BoxConfigBuilder;Lcom/box/boxjavalibv2/BoxConfigBuilder;)V
    .registers 4
    .param p2, "builder"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->this$0:Lcom/box/boxjavalibv2/BoxConfigBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$100(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mApiUrlAuthority:Ljava/lang/String;

    .line 214
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$200(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mApiUrlPath:Ljava/lang/String;

    .line 215
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$300(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mApiUrlScheme:Ljava/lang/String;

    .line 216
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$400(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mDownloadUrlAuthority:Ljava/lang/String;

    .line 217
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$500(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mDownloadUrlPath:Ljava/lang/String;

    .line 218
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$600(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mDownloadUrlScheme:Ljava/lang/String;

    .line 219
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$700(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthApiUrlPath:Ljava/lang/String;

    .line 220
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$800(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthUrlAuthority:Ljava/lang/String;

    .line 221
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$900(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthUrlScheme:Ljava/lang/String;

    .line 222
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$1000(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthWebUrlPath:Ljava/lang/String;

    .line 223
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$1100(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUploadUrlAuthority:Ljava/lang/String;

    .line 224
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$1200(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUploadUrlPath:Ljava/lang/String;

    .line 225
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$1300(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUploadUrlScheme:Ljava/lang/String;

    .line 226
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$1400(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUserAgent:Ljava/lang/String;

    .line 227
    invoke-static {p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder;->access$1500(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mVersion:Ljava/lang/String;

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Lcom/box/boxjavalibv2/BoxConfigBuilder;Lcom/box/boxjavalibv2/BoxConfigBuilder;Lcom/box/boxjavalibv2/BoxConfigBuilder$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;
    .param p2, "x1"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;
    .param p3, "x2"    # Lcom/box/boxjavalibv2/BoxConfigBuilder$1;

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;-><init>(Lcom/box/boxjavalibv2/BoxConfigBuilder;Lcom/box/boxjavalibv2/BoxConfigBuilder;)V

    return-void
.end method


# virtual methods
.method public getApiUrlAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mApiUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getApiUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mApiUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method public getApiUrlScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mApiUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrlAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mDownloadUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mDownloadUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrlScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mDownloadUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthApiUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthApiUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthUrlAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthUrlScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthWebUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mOAuthWebUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUrlAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUploadUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUrlPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUploadUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUrlScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUploadUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;->mVersion:Ljava/lang/String;

    return-object v0
.end method
