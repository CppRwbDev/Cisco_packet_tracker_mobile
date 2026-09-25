.class public final enum Lorg/jshybugger/jE;
.super Ljava/lang/Enum;
.source "TransportProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jshybugger/jE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jshybugger/jE;

.field private static final synthetic b:[Lorg/jshybugger/jE;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 7
    new-instance v0, Lorg/jshybugger/jE;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/jE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/jE;->a:Lorg/jshybugger/jE;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jshybugger/jE;

    sget-object v1, Lorg/jshybugger/jE;->a:Lorg/jshybugger/jE;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jshybugger/jE;->b:[Lorg/jshybugger/jE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/jshybugger/jE;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lorg/jshybugger/jE;->b:[Lorg/jshybugger/jE;

    invoke-virtual {v0}, [Lorg/jshybugger/jE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jshybugger/jE;

    return-object v0
.end method
