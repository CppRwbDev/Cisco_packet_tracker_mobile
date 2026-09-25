.class public final Lorg/jshybugger/ea;
.super Ljava/lang/Object;
.source "HttpResponseStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jshybugger/ea;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/jshybugger/ea;

.field public static final b:Lorg/jshybugger/ea;

.field public static final c:Lorg/jshybugger/ea;

.field public static final d:Lorg/jshybugger/ea;

.field public static final e:Lorg/jshybugger/ea;

.field public static final f:Lorg/jshybugger/ea;

.field public static final g:Lorg/jshybugger/ea;

.field public static final h:Lorg/jshybugger/ea;

.field public static final i:Lorg/jshybugger/ea;

.field public static final j:Lorg/jshybugger/ea;

.field public static final k:Lorg/jshybugger/ea;

.field public static final l:Lorg/jshybugger/ea;

.field public static final m:Lorg/jshybugger/ea;


# instance fields
.field private final n:I

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x64

    const-string v2, "Continue"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 33
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->a:Lorg/jshybugger/ea;

    .line 38
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x66

    const-string v2, "Processing"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 43
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xc8

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->b:Lorg/jshybugger/ea;

    .line 48
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xc9

    const-string v2, "Created"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 53
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 58
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xcb

    const-string v2, "Non-Authoritative Information"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 64
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xcc

    const-string v2, "No Content"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->c:Lorg/jshybugger/ea;

    .line 69
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xcd

    const-string v2, "Reset Content"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->d:Lorg/jshybugger/ea;

    .line 74
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xce

    const-string v2, "Partial Content"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 79
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0xcf

    const-string v2, "Multi-Status"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 84
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x12c

    const-string v2, "Multiple Choices"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 89
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x12d

    const-string v2, "Moved Permanently"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 94
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x12e

    const-string v2, "Found"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->e:Lorg/jshybugger/ea;

    .line 99
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x12f

    const-string v2, "See Other"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 104
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x130

    const-string v2, "Not Modified"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->f:Lorg/jshybugger/ea;

    .line 109
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x131

    const-string v2, "Use Proxy"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 114
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x133

    const-string v2, "Temporary Redirect"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 119
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->g:Lorg/jshybugger/ea;

    .line 124
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 129
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x192

    const-string v2, "Payment Required"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 134
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x193

    const-string v2, "Forbidden"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->h:Lorg/jshybugger/ea;

    .line 139
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x194

    const-string v2, "Not Found"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->i:Lorg/jshybugger/ea;

    .line 144
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x195

    const-string v2, "Method Not Allowed"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 149
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x196

    const-string v2, "Not Acceptable"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 154
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x197

    const-string v2, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->j:Lorg/jshybugger/ea;

    .line 160
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x198

    const-string v2, "Request Timeout"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 165
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x199

    const-string v2, "Conflict"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 170
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x19a

    const-string v2, "Gone"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 175
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x19b

    const-string v2, "Length Required"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 180
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x19c

    const-string v2, "Precondition Failed"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 185
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x19d

    const-string v2, "Request Entity Too Large"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 191
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x19e

    const-string v2, "Request-URI Too Long"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 196
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x19f

    const-string v2, "Unsupported Media Type"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 202
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1a0

    const-string v2, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 208
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1a1

    const-string v2, "Expectation Failed"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 213
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1a6

    const-string v2, "Unprocessable Entity"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 218
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1a7

    const-string v2, "Locked"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 223
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1a8

    const-string v2, "Failed Dependency"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 228
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1a9

    const-string v2, "Unordered Collection"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 233
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1aa

    const-string v2, "Upgrade Required"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->k:Lorg/jshybugger/ea;

    .line 238
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1ac

    const-string v2, "Precondition Required"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 243
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1ad

    const-string v2, "Too Many Requests"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 248
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1af

    const-string v2, "Request Header Fields Too Large"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 254
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 260
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1f5

    const-string v2, "Not Implemented"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 265
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1f6

    const-string v2, "Bad Gateway"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->l:Lorg/jshybugger/ea;

    .line 270
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1f7

    const-string v2, "Service Unavailable"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 275
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1f8

    const-string v2, "Gateway Timeout"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jshybugger/ea;->m:Lorg/jshybugger/ea;

    .line 280
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1f9

    const-string v2, "HTTP Version Not Supported"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 286
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1fa

    const-string v2, "Variant Also Negotiates"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 292
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1fb

    const-string v2, "Insufficient Storage"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 297
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1fe

    const-string v2, "Not Extended"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    .line 302
    new-instance v0, Lorg/jshybugger/ea;

    const/16 v1, 0x1ff

    const-string v2, "Network Authentication Required"

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    if-gez p1, :cond_20

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_20
    if-nez p2, :cond_2a

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reasonPhrase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 462
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 464
    packed-switch v1, :pswitch_data_56

    .line 461
    :pswitch_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 466
    :pswitch_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reasonPhrase contains one of the following prohibited characters: \\r\\n: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_50
    iput p1, p0, Lorg/jshybugger/ea;->n:I

    .line 473
    iput-object p2, p0, Lorg/jshybugger/ea;->o:Ljava/lang/String;

    .line 474
    return-void

    .line 464
    nop

    :pswitch_data_56
    .packed-switch 0xa
        :pswitch_3b
        :pswitch_38
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Lorg/jshybugger/ea;->n:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lorg/jshybugger/ea;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 23
    check-cast p1, Lorg/jshybugger/ea;

    iget v0, p0, Lorg/jshybugger/ea;->n:I

    iget v1, p1, Lorg/jshybugger/ea;->n:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 497
    instance-of v1, p1, Lorg/jshybugger/ea;

    if-nez v1, :cond_6

    .line 501
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lorg/jshybugger/ea;->n:I

    check-cast p1, Lorg/jshybugger/ea;

    iget v2, p1, Lorg/jshybugger/ea;->n:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 492
    iget v0, p0, Lorg/jshybugger/ea;->n:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jshybugger/ea;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 512
    iget v1, p0, Lorg/jshybugger/ea;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    iget-object v1, p0, Lorg/jshybugger/ea;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
