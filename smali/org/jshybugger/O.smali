.class public final enum Lorg/jshybugger/o;
.super Ljava/lang/Enum;
.source "JZlib.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jshybugger/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jshybugger/o;

.field public static final enum b:Lorg/jshybugger/o;

.field public static final enum c:Lorg/jshybugger/o;

.field public static final enum d:Lorg/jshybugger/o;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lorg/jshybugger/o;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/o;->a:Lorg/jshybugger/o;

    new-instance v0, Lorg/jshybugger/o;

    const-string v1, "ZLIB"

    invoke-direct {v0, v1, v3}, Lorg/jshybugger/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/o;->b:Lorg/jshybugger/o;

    new-instance v0, Lorg/jshybugger/o;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v4}, Lorg/jshybugger/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/o;->c:Lorg/jshybugger/o;

    new-instance v0, Lorg/jshybugger/o;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v5}, Lorg/jshybugger/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/o;->d:Lorg/jshybugger/o;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jshybugger/o;

    sget-object v1, Lorg/jshybugger/o;->a:Lorg/jshybugger/o;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jshybugger/o;->b:Lorg/jshybugger/o;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jshybugger/o;->c:Lorg/jshybugger/o;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jshybugger/o;->d:Lorg/jshybugger/o;

    aput-object v1, v0, v5

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
