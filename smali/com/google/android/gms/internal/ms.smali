.class public final Lcom/google/android/gms/internal/ms;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/mt;

.field public static final ahR:Lcom/google/android/gms/internal/ms;

.field public static final ahS:Lcom/google/android/gms/internal/ms;

.field public static final ahT:Lcom/google/android/gms/internal/ms;

.field public static final ahU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ms;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final ahV:I

.field final uO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v0, "test_type"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ms;->y(Ljava/lang/String;I)Lcom/google/android/gms/internal/ms;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ms;->ahR:Lcom/google/android/gms/internal/ms;

    const-string v0, "trellis_store"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ms;->y(Ljava/lang/String;I)Lcom/google/android/gms/internal/ms;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ms;->ahS:Lcom/google/android/gms/internal/ms;

    const-string v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ms;->y(Ljava/lang/String;I)Lcom/google/android/gms/internal/ms;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ms;->ahT:Lcom/google/android/gms/internal/ms;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/internal/ms;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/ms;->ahR:Lcom/google/android/gms/internal/ms;

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ms;->ahS:Lcom/google/android/gms/internal/ms;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/ms;->ahT:Lcom/google/android/gms/internal/ms;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ms;->ahU:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/mt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ms;->CREATOR:Lcom/google/android/gms/internal/mt;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/n;->aZ(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/ms;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ms;->uO:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ms;->ahV:I

    return-void
.end method

.method private static y(Ljava/lang/String;I)Lcom/google/android/gms/internal/ms;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ms;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ms;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ms;->CREATOR:Lcom/google/android/gms/internal/mt;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    .end local p1    # "object":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/ms;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/ms;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/ms;->uO:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ms;->uO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/google/android/gms/internal/ms;->ahV:I

    iget v3, p1, Lcom/google/android/gms/internal/ms;->ahV:I

    if-eq v2, v3, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ms;->uO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ms;->uO:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/ms;->CREATOR:Lcom/google/android/gms/internal/mt;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mt;->a(Lcom/google/android/gms/internal/ms;Landroid/os/Parcel;I)V

    return-void
.end method
