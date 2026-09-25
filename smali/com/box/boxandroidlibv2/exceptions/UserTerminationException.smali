.class public Lcom/box/boxandroidlibv2/exceptions/UserTerminationException;
.super Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;
.source "UserTerminationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/box/boxandroidlibv2/exceptions/BoxAndroidLibException;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/box/boxandroidlibv2/exceptions/UserTerminationException;->mContext:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/box/boxandroidlibv2/exceptions/UserTerminationException;->mContext:Ljava/lang/Object;

    return-object v0
.end method
