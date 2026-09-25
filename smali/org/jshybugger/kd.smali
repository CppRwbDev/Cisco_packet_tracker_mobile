.class public Lorg/jshybugger/kD;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-class v0, Lorg/jshybugger/kD;

    invoke-static {v0}, Lorg/jshybugger/nT;->a(Ljava/lang/Class;)Lorg/jshybugger/nS;

    .line 36
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/kD;->a:Ljava/util/TimeZone;

    .line 47
    const-string v0, "localhost"

    sput-object v0, Lorg/jshybugger/kD;->b:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v1, "Via: 1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v1, Lorg/jshybugger/kD;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "^https?://.*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/kD;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 133
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "date is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-nez v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lorg/jshybugger/kD;->a:Ljava/util/TimeZone;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    sget-object v0, Lorg/jshybugger/kD;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_d

    .line 83
    :goto_c
    return-object p0

    .line 77
    :cond_d
    const-string v0, "://"

    invoke-static {p0, v0}, Lorg/jshybugger/hA;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 79
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 80
    const-string p0, "/"

    goto :goto_c

    .line 82
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static a(Lorg/jshybugger/dU;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    invoke-interface {p0}, Lorg/jshybugger/dU;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jshybugger/kD;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_24

    :goto_10
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_23
    return-object v0

    .line 171
    :cond_24
    const-string v1, "://"

    invoke-static {v0, v1}, Lorg/jshybugger/hA;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Lorg/jshybugger/dX;)Lorg/jshybugger/dX;
    .registers 6

    .prologue
    .line 212
    instance-of v0, p0, Lorg/jshybugger/dh;

    if-eqz v0, :cond_41

    move-object v0, p0

    .line 214
    check-cast v0, Lorg/jshybugger/dh;

    invoke-virtual {v0}, Lorg/jshybugger/dh;->a()Lorg/jshybugger/H;

    move-result-object v1

    .line 215
    new-instance v0, Lorg/jshybugger/dh;

    invoke-interface {p0}, Lorg/jshybugger/dX;->g()Lorg/jshybugger/ec;

    move-result-object v2

    invoke-interface {p0}, Lorg/jshybugger/dX;->h()Lorg/jshybugger/ea;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;Lorg/jshybugger/H;)V

    move-object v1, v0

    .line 221
    :goto_19
    invoke-interface {p0}, Lorg/jshybugger/dX;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/dJ;->c()Ljava/util/Set;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    invoke-interface {p0}, Lorg/jshybugger/dX;->f()Lorg/jshybugger/dJ;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/jshybugger/dJ;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 224
    invoke-interface {v1}, Lorg/jshybugger/dX;->f()Lorg/jshybugger/dJ;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jshybugger/dJ;

    goto :goto_25

    .line 218
    :cond_41
    new-instance v0, Lorg/jshybugger/dp;

    invoke-interface {p0}, Lorg/jshybugger/dX;->g()Lorg/jshybugger/ec;

    move-result-object v1

    invoke-interface {p0}, Lorg/jshybugger/dX;->h()Lorg/jshybugger/ea;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dp;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    move-object v1, v0

    goto :goto_19

    .line 226
    :cond_50
    return-object v1
.end method

.method public static a(Lorg/jshybugger/dL;)V
    .registers 4

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    invoke-interface {p0}, Lorg/jshybugger/dL;->g()Lorg/jshybugger/ec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/ec;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface {p0}, Lorg/jshybugger/dL;->g()Lorg/jshybugger/ec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/ec;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    sget-object v0, Lorg/jshybugger/kD;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {p0}, Lorg/jshybugger/dL;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v2, "Via"

    invoke-virtual {v0, v2}, Lorg/jshybugger/dJ;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 245
    invoke-interface {p0}, Lorg/jshybugger/dL;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v2, "Via"

    invoke-virtual {v0, v2}, Lorg/jshybugger/dJ;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_47
    invoke-interface {p0}, Lorg/jshybugger/dL;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Via"

    invoke-virtual {v1, v2, v0}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jshybugger/dJ;

    .line 251
    return-void

    .line 248
    :cond_51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_47
.end method

.method public static a(Lorg/jshybugger/dN;)Z
    .registers 2

    .prologue
    .line 147
    instance-of v0, p0, Lorg/jshybugger/ed;

    return v0
.end method

.method public static b(Lorg/jshybugger/dN;)Z
    .registers 2

    .prologue
    .line 160
    instance-of v0, p0, Lorg/jshybugger/ed;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static c(Lorg/jshybugger/dN;)Z
    .registers 3

    .prologue
    .line 307
    instance-of v0, p0, Lorg/jshybugger/dU;

    if-eqz v0, :cond_14

    sget-object v0, Lorg/jshybugger/dM;->e:Lorg/jshybugger/dM;

    check-cast p0, Lorg/jshybugger/dU;

    invoke-interface {p0}, Lorg/jshybugger/dU;->e()Lorg/jshybugger/dM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/dM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
