.class public final Lcom/google/android/gms/fitness/data/Value;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field private final ST:I

.field private Tk:Z

.field private Tl:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/u;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 5
    .param p1, "format"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/gms/fitness/data/Value;-><init>(IIZF)V

    return-void
.end method

.method constructor <init>(IIZF)V
    .registers 5
    .param p1, "versionCode"    # I
    .param p2, "format"    # I
    .param p3, "isSet"    # Z
    .param p4, "value"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->BR:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/data/Value;->Tk:Z

    iput p4, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/Value;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->ST:I

    if-ne v2, v3, :cond_38

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->Tk:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Value;->Tk:Z

    if-ne v2, v3, :cond_38

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    packed-switch v2, :pswitch_data_3a

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_36

    :cond_1b
    :goto_1b
    return v0

    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v3

    if-eq v2, v3, :cond_1b

    move v0, v1

    goto :goto_1b

    :pswitch_28
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_1b

    :cond_36
    move v0, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1b

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public asFloat()F
    .registers 3

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_6
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public asInt()I
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    if-ne v1, v0, :cond_11

    :goto_5
    const-string v1, "Value is not in int format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_e

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Value;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Value;->a(Lcom/google/android/gms/fitness/data/Value;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getFormat()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->BR:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->Tk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method iS()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    return v0
.end method

.method public isSet()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->Tk:Z

    return v0
.end method

.method public setFloat(F)V
    .registers 5
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    move v0, v1

    :goto_7
    const-string v2, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->Tk:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setInt(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    if-ne v0, v1, :cond_14

    move v0, v1

    :goto_6
    const-string v2, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->Tk:Z

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Value;->Tl:F

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->ST:I

    packed-switch v0, :pswitch_data_1a

    const-string v0, "unknown"

    :goto_7
    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/u;->a(Lcom/google/android/gms/fitness/data/Value;Landroid/os/Parcel;I)V

    return-void
.end method
