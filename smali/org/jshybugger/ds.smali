.class final enum Lorg/jshybugger/dS;
.super Ljava/lang/Enum;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jshybugger/dS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jshybugger/dS;

.field public static final enum b:Lorg/jshybugger/dS;

.field public static final enum c:Lorg/jshybugger/dS;

.field public static final enum d:Lorg/jshybugger/dS;

.field public static final enum e:Lorg/jshybugger/dS;

.field public static final enum f:Lorg/jshybugger/dS;

.field public static final enum g:Lorg/jshybugger/dS;

.field public static final enum h:Lorg/jshybugger/dS;

.field public static final enum i:Lorg/jshybugger/dS;

.field public static final enum j:Lorg/jshybugger/dS;

.field public static final enum k:Lorg/jshybugger/dS;

.field public static final enum l:Lorg/jshybugger/dS;

.field public static final enum m:Lorg/jshybugger/dS;

.field private static final synthetic n:[Lorg/jshybugger/dS;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "SKIP_CONTROL_CHARS"

    invoke-direct {v0, v1, v3}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->a:Lorg/jshybugger/dS;

    .line 134
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_INITIAL"

    invoke-direct {v0, v1, v4}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->b:Lorg/jshybugger/dS;

    .line 135
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_HEADER"

    invoke-direct {v0, v1, v5}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->c:Lorg/jshybugger/dS;

    .line 136
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT"

    invoke-direct {v0, v1, v6}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->d:Lorg/jshybugger/dS;

    .line 137
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS"

    invoke-direct {v0, v1, v7}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->e:Lorg/jshybugger/dS;

    .line 138
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_FIXED_LENGTH_CONTENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->f:Lorg/jshybugger/dS;

    .line 139
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_FIXED_LENGTH_CONTENT_AS_CHUNKS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->g:Lorg/jshybugger/dS;

    .line 140
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_CHUNK_SIZE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->h:Lorg/jshybugger/dS;

    .line 141
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_CHUNKED_CONTENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->i:Lorg/jshybugger/dS;

    .line 142
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_CHUNKED_CONTENT_AS_CHUNKS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->j:Lorg/jshybugger/dS;

    .line 143
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_CHUNK_DELIMITER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->k:Lorg/jshybugger/dS;

    .line 144
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "READ_CHUNK_FOOTER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->l:Lorg/jshybugger/dS;

    .line 145
    new-instance v0, Lorg/jshybugger/dS;

    const-string v1, "BAD_MESSAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jshybugger/dS;->m:Lorg/jshybugger/dS;

    .line 132
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/jshybugger/dS;

    sget-object v1, Lorg/jshybugger/dS;->a:Lorg/jshybugger/dS;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jshybugger/dS;->b:Lorg/jshybugger/dS;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jshybugger/dS;->c:Lorg/jshybugger/dS;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jshybugger/dS;->d:Lorg/jshybugger/dS;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jshybugger/dS;->e:Lorg/jshybugger/dS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jshybugger/dS;->f:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jshybugger/dS;->g:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jshybugger/dS;->h:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jshybugger/dS;->i:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jshybugger/dS;->j:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jshybugger/dS;->k:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jshybugger/dS;->l:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/jshybugger/dS;->m:Lorg/jshybugger/dS;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jshybugger/dS;->n:[Lorg/jshybugger/dS;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/jshybugger/dS;
    .registers 1

    .prologue
    .line 132
    sget-object v0, Lorg/jshybugger/dS;->n:[Lorg/jshybugger/dS;

    invoke-virtual {v0}, [Lorg/jshybugger/dS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jshybugger/dS;

    return-object v0
.end method
