.class public Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;
.super Lcom/box/boxjavalibv2/dao/BoxGroupMembership;
.source "BoxAndroidGroupMembership.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership$1;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership$1;-><init>()V

    sput-object v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;-><init>()V

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;-><init>(Lcom/box/boxjavalibv2/dao/BoxGroupMembership;)V

    .line 28
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
    .line 36
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;-><init>(Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method private setGroup(Lcom/box/boxandroidlibv2/dao/BoxAndroidGroup;)V
    .registers 3
    .param p1, "group"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidGroup;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation

    .prologue
    .line 70
    const-string v0, "group"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method private setUser(Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;)V
    .registers 3
    .param p1, "user"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 53
    const-string v0, "user"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getGroup()Lcom/box/boxandroidlibv2/dao/BoxAndroidGroup;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation

    .prologue
    .line 59
    const-string v0, "group"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroup;

    return-object v0
.end method

.method public bridge synthetic getGroup()Lcom/box/boxjavalibv2/dao/BoxGroup;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;->getGroup()Lcom/box/boxandroidlibv2/dao/BoxAndroidGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 42
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;

    return-object v0
.end method

.method public bridge synthetic getUser()Lcom/box/boxjavalibv2/dao/BoxUser;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidGroupMembership;->getUser()Lcom/box/boxandroidlibv2/dao/BoxAndroidUser;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-super {p0, v0, p2}, Lcom/box/boxjavalibv2/dao/BoxGroupMembership;->writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V

    .line 81
    return-void
.end method
