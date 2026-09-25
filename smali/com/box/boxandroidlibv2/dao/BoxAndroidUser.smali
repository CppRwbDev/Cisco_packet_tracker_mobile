.class public Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;
.super Lcom/box/boxjavalibv2/dao/BoxUser;
.source "BoxAndroidUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser$1;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser$1;-><init>()V

    sput-object v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxUser;-><init>()V

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxUser;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;-><init>(Lcom/box/boxjavalibv2/dao/BoxUser;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxUser;-><init>(Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method private setEnterprise(Lcom/box/boxandroidlibv2/dao/BoxAndroidEnterprise;)V
    .registers 3
    .param p1, "enterprise"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidEnterprise;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "enterprise"
    .end annotation

    .prologue
    .line 44
    const-string v0, "enterprise"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getEnterprise()Lcom/box/boxandroidlibv2/dao/BoxAndroidEnterprise;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "enterprise"
    .end annotation

    .prologue
    .line 50
    const-string v0, "enterprise"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidEnterprise;

    return-object v0
.end method

.method public bridge synthetic getEnterprise()Lcom/box/boxjavalibv2/dao/BoxEnterprise;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "enterprise"
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;->getEnterprise()Lcom/box/boxandroidlibv2/dao/BoxAndroidEnterprise;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-super {p0, v0, p2}, Lcom/box/boxjavalibv2/dao/BoxUser;->writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V

    .line 61
    return-void
.end method
