.class Lorg/jshybugger/gQ;
.super Ljava/lang/Object;
.source "ConcurrentHashMapV8.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Lorg/jshybugger/gO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jshybugger/gO",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field c:Lorg/jshybugger/gO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/gO",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>([Lorg/jshybugger/gO;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jshybugger/gO",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .prologue
    .line 3140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3141
    iput-object p1, p0, Lorg/jshybugger/gQ;->a:[Lorg/jshybugger/gO;

    .line 3142
    iput p2, p0, Lorg/jshybugger/gQ;->f:I

    .line 3143
    iput p3, p0, Lorg/jshybugger/gQ;->b:I

    iput p3, p0, Lorg/jshybugger/gQ;->d:I

    .line 3144
    iput p4, p0, Lorg/jshybugger/gQ;->e:I

    .line 3145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/gQ;->c:Lorg/jshybugger/gO;

    .line 3146
    return-void
.end method


# virtual methods
.method final a()Lorg/jshybugger/gO;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/gO",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3153
    iget-object v0, p0, Lorg/jshybugger/gQ;->c:Lorg/jshybugger/gO;

    if-eqz v0, :cond_7

    .line 3154
    iget-object v0, v0, Lorg/jshybugger/gO;->next:Lorg/jshybugger/gO;

    .line 3157
    :cond_7
    :goto_7
    if-eqz v0, :cond_d

    .line 3158
    iput-object v0, p0, Lorg/jshybugger/gQ;->c:Lorg/jshybugger/gO;

    move-object v1, v0

    .line 3161
    :goto_c
    return-object v1

    .line 3159
    :cond_d
    iget v0, p0, Lorg/jshybugger/gQ;->d:I

    iget v2, p0, Lorg/jshybugger/gQ;->e:I

    if-ge v0, v2, :cond_1e

    iget-object v0, p0, Lorg/jshybugger/gQ;->a:[Lorg/jshybugger/gO;

    if-eqz v0, :cond_1e

    array-length v2, v0

    iget v3, p0, Lorg/jshybugger/gQ;->b:I

    if-le v2, v3, :cond_1e

    if-gez v3, :cond_21

    .line 3161
    :cond_1e
    iput-object v1, p0, Lorg/jshybugger/gQ;->c:Lorg/jshybugger/gO;

    goto :goto_c

    .line 3162
    :cond_21
    iget v3, p0, Lorg/jshybugger/gQ;->b:I

    invoke-static {v0, v3}, Lorg/jshybugger/gC;->a([Lorg/jshybugger/gO;I)Lorg/jshybugger/gO;

    move-result-object v0

    if-eqz v0, :cond_41

    iget v3, v0, Lorg/jshybugger/gO;->b:I

    if-gez v3, :cond_41

    .line 3163
    instance-of v3, v0, Lorg/jshybugger/gK;

    if-eqz v3, :cond_39

    .line 3164
    check-cast v0, Lorg/jshybugger/gK;

    iget-object v0, v0, Lorg/jshybugger/gK;->a:[Lorg/jshybugger/gO;

    iput-object v0, p0, Lorg/jshybugger/gQ;->a:[Lorg/jshybugger/gO;

    move-object v0, v1

    .line 3166
    goto :goto_7

    .line 3168
    :cond_39
    instance-of v3, v0, Lorg/jshybugger/gR;

    if-eqz v3, :cond_53

    .line 3169
    check-cast v0, Lorg/jshybugger/gR;

    iget-object v0, v0, Lorg/jshybugger/gR;->first:Lorg/jshybugger/gS;

    .line 3173
    :cond_41
    :goto_41
    iget v3, p0, Lorg/jshybugger/gQ;->b:I

    iget v4, p0, Lorg/jshybugger/gQ;->f:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/jshybugger/gQ;->b:I

    if-lt v3, v2, :cond_7

    .line 3174
    iget v2, p0, Lorg/jshybugger/gQ;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jshybugger/gQ;->d:I

    iput v2, p0, Lorg/jshybugger/gQ;->b:I

    goto :goto_7

    :cond_53
    move-object v0, v1

    .line 3171
    goto :goto_41
.end method
