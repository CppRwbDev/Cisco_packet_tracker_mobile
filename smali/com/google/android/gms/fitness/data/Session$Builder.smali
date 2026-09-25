.class public Lcom/google/android/gms/fitness/data/Session$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private KL:J

.field private SJ:Lcom/google/android/gms/fitness/data/a;

.field private Si:J

.field private Sv:I

.field private Tf:Ljava/lang/String;

.field private Tg:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->KL:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Si:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Sv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/data/Session$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->KL:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/data/Session$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Si:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/data/Session$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/data/Session$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Tf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/fitness/data/Session$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Tg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/fitness/data/Session$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Sv:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/fitness/data/Session$Builder;)Lcom/google/android/gms/fitness/data/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->SJ:Lcom/google/android/gms/fitness/data/a;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/data/Session;
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->KL:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4a

    move v0, v1

    :goto_b
    const-string v3, "Start time should be specified."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Si:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1e

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Si:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->KL:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1f

    :cond_1e
    move v2, v1

    :cond_1f
    const-string v0, "End time should be later than start time."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Tf:Ljava/lang/String;

    if-nez v0, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    if-nez v0, :cond_4c

    const-string v0, ""

    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->KL:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Tf:Ljava/lang/String;

    :cond_43
    new-instance v0, Lcom/google/android/gms/fitness/data/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Session;-><init>(Lcom/google/android/gms/fitness/data/Session$Builder;Lcom/google/android/gms/fitness/data/Session$1;)V

    return-object v0

    :cond_4a
    move v0, v2

    goto :goto_b

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    goto :goto_33
.end method

.method public setActivity(I)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 3
    .param p1, "activity"    # I

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/fitness/FitnessActivities;->cw(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Sv:I

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 7
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v4, :cond_1b

    move v0, v1

    :goto_b
    const-string v3, "Session description cannot exceed %d characters"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Tg:Ljava/lang/String;

    return-object p0

    :cond_1b
    move v0, v2

    goto :goto_b
.end method

.method public setEndTimeMillis(J)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 6
    .param p1, "endTimeMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "End time should be positive."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Si:J

    return-object p0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->Tf:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v4, :cond_1b

    move v0, v1

    :goto_b
    const-string v3, "Session name cannot exceed %d characters"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->mName:Ljava/lang/String;

    return-object p0

    :cond_1b
    move v0, v2

    goto :goto_b
.end method

.method public setStartTimeMillis(J)Lcom/google/android/gms/fitness/data/Session$Builder;
    .registers 6
    .param p1, "startTimeMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "Start time should be positive."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Session$Builder;->KL:J

    return-object p0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method
