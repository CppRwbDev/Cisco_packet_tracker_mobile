.class public Lcom/google/android/gms/internal/jd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/je;


# instance fields
.field private final BR:I

.field private final Mk:Lcom/google/android/gms/internal/jf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/je;

    invoke-direct {v0}, Lcom/google/android/gms/internal/je;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jd;->CREATOR:Lcom/google/android/gms/internal/je;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/jf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jd;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jd;->Mk:Lcom/google/android/gms/internal/jf;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/jf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jd;->BR:I

    iput-object p1, p0, Lcom/google/android/gms/internal/jd;->Mk:Lcom/google/android/gms/internal/jf;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ji$b;)Lcom/google/android/gms/internal/jd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ji$b",
            "<**>;)",
            "Lcom/google/android/gms/internal/jd;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/jf;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/jd;

    check-cast p0, Lcom/google/android/gms/internal/jf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jd;-><init>(Lcom/google/android/gms/internal/jf;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/jd;->CREATOR:Lcom/google/android/gms/internal/je;

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jd;->BR:I

    return v0
.end method

.method ha()Lcom/google/android/gms/internal/jf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Mk:Lcom/google/android/gms/internal/jf;

    return-object v0
.end method

.method public hb()Lcom/google/android/gms/internal/ji$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ji$b",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Mk:Lcom/google/android/gms/internal/jf;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Mk:Lcom/google/android/gms/internal/jf;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/jd;->CREATOR:Lcom/google/android/gms/internal/je;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/jd;Landroid/os/Parcel;I)V

    return-void
.end method
