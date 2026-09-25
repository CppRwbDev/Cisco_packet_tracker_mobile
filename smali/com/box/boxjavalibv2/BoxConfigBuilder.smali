.class public Lcom/box/boxjavalibv2/BoxConfigBuilder;
.super Ljava/lang/Object;
.source "BoxConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxjavalibv2/BoxConfigBuilder$1;,
        Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;
    }
.end annotation


# static fields
.field private static final API_URL_AUTHORITY:Ljava/lang/String; = "api.box.com"

.field private static final API_URL_PATH:Ljava/lang/String; = "/2.0"

.field private static final API_URL_SCHEME:Ljava/lang/String; = "https"

.field private static final DOWNLOAD_URL_AUTHORITY:Ljava/lang/String; = "api.box.com"

.field private static final DOWNLOAD_URL_PATH:Ljava/lang/String; = "/2.0"

.field private static final DOWNLOAD_URL_SCHEME:Ljava/lang/String; = "https"

.field private static final OAUTH_API_URL_PATH:Ljava/lang/String; = "/api"

.field private static final OAUTH_URL_AUTHORITY:Ljava/lang/String; = "www.box.com"

.field private static final OAUTH_URL_SCHEME:Ljava/lang/String; = "https"

.field private static final OAUTH_WEB_URL_PATH:Ljava/lang/String; = "/api/oauth2/authorize"

.field private static final UPLOAD_URL_AUTHORITY:Ljava/lang/String; = "upload.box.com"

.field private static final UPLOAD_URL_PATH:Ljava/lang/String; = "/api/2.0"

.field private static final UPLOAD_URL_SCHEME:Ljava/lang/String; = "https"

.field private static final USER_AGENT:Ljava/lang/String; = "BoxJavaLibraryV2"

.field private static final VERSION_NUMBER:Ljava/lang/String; = "v3.0.13"


# instance fields
.field private mApiUrlAuthority:Ljava/lang/String;

.field private mApiUrlPath:Ljava/lang/String;

.field private mApiUrlScheme:Ljava/lang/String;

.field private mDownloadUrlAuthority:Ljava/lang/String;

.field private mDownloadUrlPath:Ljava/lang/String;

.field private mDownloadUrlScheme:Ljava/lang/String;

.field private mOAuthApiUrlPath:Ljava/lang/String;

.field private mOAuthUrlAuthority:Ljava/lang/String;

.field private mOAuthUrlScheme:Ljava/lang/String;

.field private mOAuthWebUrlPath:Ljava/lang/String;

.field private mUploadUrlAuthority:Ljava/lang/String;

.field private mUploadUrlPath:Ljava/lang/String;

.field private mUploadUrlScheme:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "https"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthUrlScheme:Ljava/lang/String;

    .line 39
    const-string v0, "www.box.com"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthUrlAuthority:Ljava/lang/String;

    .line 40
    const-string v0, "/api"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthApiUrlPath:Ljava/lang/String;

    .line 41
    const-string v0, "/api/oauth2/authorize"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthWebUrlPath:Ljava/lang/String;

    .line 42
    const-string v0, "https"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlScheme:Ljava/lang/String;

    .line 43
    const-string v0, "api.box.com"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlAuthority:Ljava/lang/String;

    .line 44
    const-string v0, "/2.0"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlPath:Ljava/lang/String;

    .line 45
    const-string v0, "https"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlScheme:Ljava/lang/String;

    .line 46
    const-string v0, "upload.box.com"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlAuthority:Ljava/lang/String;

    .line 47
    const-string v0, "/api/2.0"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlPath:Ljava/lang/String;

    .line 48
    const-string v0, "https"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlScheme:Ljava/lang/String;

    .line 49
    const-string v0, "api.box.com"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlAuthority:Ljava/lang/String;

    .line 50
    const-string v0, "/2.0"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlPath:Ljava/lang/String;

    .line 51
    const-string v0, "BoxJavaLibraryV2"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUserAgent:Ljava/lang/String;

    .line 52
    const-string v0, "v3.0.13"

    iput-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mVersion:Ljava/lang/String;

    .line 194
    return-void
.end method

.method static synthetic access$100(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthWebUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthApiUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthUrlAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/box/boxjavalibv2/BoxConfigBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConfigBuilder;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthUrlScheme:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public apiUrlAuthority(Ljava/lang/String;)V
    .registers 2
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlAuthority:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public apiUrlPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlPath:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public apiUrlScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mApiUrlScheme:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public build()Lcom/box/boxjavalibv2/IBoxConfig;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/box/boxjavalibv2/BoxConfigBuilder$BoxConfig;-><init>(Lcom/box/boxjavalibv2/BoxConfigBuilder;Lcom/box/boxjavalibv2/BoxConfigBuilder;Lcom/box/boxjavalibv2/BoxConfigBuilder$1;)V

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthUrlScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "oAuthUrlScheme"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthUrlScheme:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setDownloadUrlAuthority(Ljava/lang/String;)V
    .registers 2
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlAuthority:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setDownloadUrlPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "downloadUrlPath"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlPath:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setDownloadUrlScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mDownloadUrlScheme:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setOAuthApiUrlPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "oAuthApiUrlPath"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthApiUrlPath:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setOAuthUrlAuthority(Ljava/lang/String;)V
    .registers 2
    .param p1, "oAuthUrlAuthority"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthUrlAuthority:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setOAuthUrlPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "oAuthUrlPath"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mOAuthWebUrlPath:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setUploadUrlAuthority(Ljava/lang/String;)V
    .registers 2
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlAuthority:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setUploadUrlPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "uploadUrlPath"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlPath:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setUploadUrlScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUploadUrlScheme:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mUserAgent:Ljava/lang/String;

    .line 136
    return-void
.end method

.method protected setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/box/boxjavalibv2/BoxConfigBuilder;->mVersion:Ljava/lang/String;

    .line 188
    return-void
.end method
