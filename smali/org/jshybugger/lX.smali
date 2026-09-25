.class final Lorg/jshybugger/lx;
.super Lorg/jshybugger/kY;
.source "NativeNumber.java"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "Number"

    sput-object v0, Lorg/jshybugger/lx;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(D)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jshybugger/kY;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/jshybugger/lx;->b:D

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "Number"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/jshybugger/lx;->b:D

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/jshybugger/lS;->a(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
