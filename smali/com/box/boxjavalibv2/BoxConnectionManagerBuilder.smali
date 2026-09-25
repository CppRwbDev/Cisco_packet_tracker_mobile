.class public Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;
.super Ljava/lang/Object;
.source "BoxConnectionManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$1;,
        Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;
    }
.end annotation


# instance fields
.field private idleTimeThreshold:J

.field private maxConnection:I

.field private maxConnectionPerRoute:I

.field private timePeriodCleanUpIdleConnection:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x32

    iput v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->maxConnectionPerRoute:I

    .line 23
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->maxConnection:I

    .line 24
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->timePeriodCleanUpIdleConnection:J

    .line 25
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->idleTimeThreshold:J

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)I
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;

    .prologue
    .line 20
    iget v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->maxConnection:I

    return v0
.end method

.method static synthetic access$200(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)I
    .registers 2
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;

    .prologue
    .line 20
    iget v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->maxConnectionPerRoute:I

    return v0
.end method

.method static synthetic access$300(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)J
    .registers 3
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->timePeriodCleanUpIdleConnection:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;)J
    .registers 3
    .param p0, "x0"    # Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->idleTimeThreshold:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;
    .registers 3

    .prologue
    .line 28
    new-instance v0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$BoxConnectionManager;-><init>(Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder$1;)V

    return-object v0
.end method

.method public setIdleTimeThreshold(J)V
    .registers 4
    .param p1, "idleTimeThreshold"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->idleTimeThreshold:J

    .line 61
    return-void
.end method

.method public setMaxConnection(I)V
    .registers 2
    .param p1, "maxConnection"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->maxConnection:I

    .line 45
    return-void
.end method

.method public setMaxConnectionPerRoute(I)V
    .registers 2
    .param p1, "maxConnectionPerRoute"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->maxConnectionPerRoute:I

    .line 37
    return-void
.end method

.method public setTimePeriodCleanUpIdleConnection(J)V
    .registers 4
    .param p1, "timePeriodCleanUpIdleConnection"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/box/boxjavalibv2/BoxConnectionManagerBuilder;->timePeriodCleanUpIdleConnection:J

    .line 53
    return-void
.end method
