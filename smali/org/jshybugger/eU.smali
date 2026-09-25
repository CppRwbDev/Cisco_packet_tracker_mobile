.class final enum Lorg/jshybugger/eu;
.super Ljava/lang/Enum;
.source "WebSocket08FrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jshybugger/eu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jshybugger/eu;

.field public static final enum b:Lorg/jshybugger/eu;

.field public static final enum c:Lorg/jshybugger/eu;

.field public static final enum d:Lorg/jshybugger/eu;

.field private static final synthetic e:[Lorg/jshybugger/eu;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lorg/jshybugger/eu;

    const-string v1, "FRAME_START"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/eu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/eu;->a:Lorg/jshybugger/eu;

    new-instance v0, Lorg/jshybugger/eu;

    const-string v1, "MASKING_KEY"

    invoke-direct {v0, v1, v3}, Lorg/jshybugger/eu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/eu;->b:Lorg/jshybugger/eu;

    new-instance v0, Lorg/jshybugger/eu;

    const-string v1, "PAYLOAD"

    invoke-direct {v0, v1, v4}, Lorg/jshybugger/eu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/eu;->c:Lorg/jshybugger/eu;

    new-instance v0, Lorg/jshybugger/eu;

    const-string v1, "CORRUPT"

    invoke-direct {v0, v1, v5}, Lorg/jshybugger/eu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/eu;->d:Lorg/jshybugger/eu;

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jshybugger/eu;

    sget-object v1, Lorg/jshybugger/eu;->a:Lorg/jshybugger/eu;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jshybugger/eu;->b:Lorg/jshybugger/eu;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jshybugger/eu;->c:Lorg/jshybugger/eu;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jshybugger/eu;->d:Lorg/jshybugger/eu;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jshybugger/eu;->e:[Lorg/jshybugger/eu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/jshybugger/eu;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lorg/jshybugger/eu;->e:[Lorg/jshybugger/eu;

    invoke-virtual {v0}, [Lorg/jshybugger/eu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jshybugger/eu;

    return-object v0
.end method
