.class public Lcom/google/android/gms/auth/AccountChangeEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/AccountChangeEventCreator;


# instance fields
.field final Dd:Ljava/lang/String;

.field final Di:I

.field final Dj:J

.field final Dk:I

.field final Dl:I

.field final Dm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/AccountChangeEventCreator;

    invoke-direct {v0}, Lcom/google/android/gms/auth/AccountChangeEventCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEvent;->CREATOR:Lcom/google/android/gms/auth/AccountChangeEventCreator;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;IILjava/lang/String;)V
    .registers 10
    .param p1, "version"    # I
    .param p2, "id"    # J
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "changeType"    # I
    .param p6, "eventIndex"    # I
    .param p7, "changeData"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Di:I

    iput-wide p2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dj:J

    invoke-static {p4}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dk:I

    iput p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dl:I

    iput-object p7, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;)V
    .registers 8
    .param p1, "id"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "changeType"    # I
    .param p5, "eventIndex"    # I
    .param p6, "changeData"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Di:I

    iput-wide p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dj:J

    invoke-static {p3}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dd:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dk:I

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dl:I

    iput-object p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    .end local p1    # "that":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "that":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    if-eqz v2, :cond_3b

    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    .end local p1    # "that":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Di:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Di:I

    if-ne v2, v3, :cond_39

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dj:J

    iget-wide v4, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Dj:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Dd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dk:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Dk:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dl:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Dl:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->Dm:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_39
    move v0, v1

    goto :goto_4

    .restart local p1    # "that":Ljava/lang/Object;
    :cond_3b
    move v0, v1

    goto :goto_4
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dd:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dm:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dk:I

    return v0
.end method

.method public getEventIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dl:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Di:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dm:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "UNKNOWN"

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dk:I

    packed-switch v1, :pswitch_data_52

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountChangeEvent {accountName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changeData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->Dl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_45
    const-string v0, "ADDED"

    goto :goto_7

    :pswitch_48
    const-string v0, "REMOVED"

    goto :goto_7

    :pswitch_4b
    const-string v0, "RENAMED_TO"

    goto :goto_7

    :pswitch_4e
    const-string v0, "RENAMED_FROM"

    goto :goto_7

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_45
        :pswitch_48
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/AccountChangeEventCreator;->a(Lcom/google/android/gms/auth/AccountChangeEvent;Landroid/os/Parcel;I)V

    return-void
.end method
