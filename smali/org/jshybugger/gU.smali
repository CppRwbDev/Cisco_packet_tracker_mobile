.class public final Lorg/jshybugger/gu;
.super Ljava/lang/Object;
.source "SystemPropertyUtil.java"


# static fields
.field private static a:Z

.field private static final b:Lorg/jshybugger/gX;

.field private static c:Z

.field private static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lorg/jshybugger/gu;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/gu;->b:Lorg/jshybugger/gX;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jshybugger/gu;->a:Z

    .line 127
    const-string v0, "-?[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/gu;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    if-nez v0, :cond_8

    .line 157
    :goto_7
    return p1

    .line 144
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lorg/jshybugger/gu;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 147
    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_21

    move-result p1

    goto :goto_7

    :catch_21
    move-exception v1

    .line 153
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse the integer system property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - using the default value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/gu;->b(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 170
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    if-nez v2, :cond_a

    .line 188
    :goto_9
    return-wide v0

    .line 175
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 176
    sget-object v3, Lorg/jshybugger/gu;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 178
    :try_start_1e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_23

    move-result-wide v0

    goto :goto_9

    :catch_23
    move-exception v3

    .line 184
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to parse the long integer system property \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\':"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - using the default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/gu;->b(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 68
    if-nez p0, :cond_a

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_18
    const/4 v0, 0x0

    .line 77
    :try_start_19
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_20

    move-result-object v0

    .line 85
    :cond_1d
    :goto_1d
    if-nez v0, :cond_57

    .line 89
    :goto_1f
    return-object p1

    .line 78
    :catch_20
    move-exception v1

    .line 79
    sget-boolean v2, Lorg/jshybugger/gu;->c:Z

    if-nez v2, :cond_1d

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to retrieve a system property \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'; default values will be used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/jshybugger/gu;->a:Z

    if-eqz v3, :cond_47

    sget-object v3, Lorg/jshybugger/gu;->b:Lorg/jshybugger/gX;

    invoke-interface {v3, v2, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_43
    const/4 v1, 0x1

    sput-boolean v1, Lorg/jshybugger/gu;->c:Z

    goto :goto_1d

    .line 80
    :cond_47
    const-class v3, Lorg/jshybugger/gu;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :cond_57
    move-object p1, v0

    .line 89
    goto :goto_1f
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 102
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-nez v1, :cond_9

    .line 124
    :goto_8
    return p1

    .line 107
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    move p1, v0

    .line 109
    goto :goto_8

    .line 112
    :cond_19
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_31
    move p1, v0

    .line 113
    goto :goto_8

    .line 116
    :cond_33
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 117
    :cond_4b
    const/4 p1, 0x0

    goto :goto_8

    .line 120
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse the boolean system property \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\':"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - using the default value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/gu;->b(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 192
    sget-boolean v0, Lorg/jshybugger/gu;->a:Z

    if-eqz v0, :cond_a

    .line 193
    sget-object v0, Lorg/jshybugger/gu;->b:Lorg/jshybugger/gX;

    invoke-interface {v0, p0}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    .line 198
    :goto_9
    return-void

    .line 196
    :cond_a
    const-class v0, Lorg/jshybugger/gu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_9
.end method
