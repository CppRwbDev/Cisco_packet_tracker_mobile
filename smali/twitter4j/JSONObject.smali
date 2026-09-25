.class public Ltwitter4j/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/JSONObject$1;,
        Ltwitter4j/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 138
    new-instance v0, Ltwitter4j/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltwitter4j/JSONObject$Null;-><init>(Ltwitter4j/JSONObject$1;)V

    sput-object v0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 269
    invoke-direct {p0}, Ltwitter4j/JSONObject;-><init>()V

    .line 270
    invoke-direct {p0, p1}, Ltwitter4j/JSONObject;->populateMap(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0}, Ltwitter4j/JSONObject;-><init>()V

    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 289
    .local v0, "c":Ljava/lang/Class;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_1b

    aget-object v1, p2, v2

    .line 291
    .local v1, "name":Ljava/lang/String;
    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Ltwitter4j/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1c

    .line 289
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 295
    .end local v1    # "name":Ljava/lang/String;
    :cond_1b
    return-void

    .line 292
    .restart local v1    # "name":Ljava/lang/String;
    :catch_1c
    move-exception v4

    goto :goto_18
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ltwitter4j/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONObject;-><init>(Ltwitter4j/JSONTokener;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 15
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, Ltwitter4j/JSONObject;-><init>()V

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 322
    invoke-static {p1, p2, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v7

    .line 327
    .local v7, "r":Ljava/util/ResourceBundle;
    invoke-virtual {v7}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 328
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 329
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 330
    .local v1, "key":Ljava/lang/Object;
    instance-of v10, v1, Ljava/lang/String;

    if-eqz v10, :cond_13

    move-object v10, v1

    .line 336
    check-cast v10, Ljava/lang/String;

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "path":[Ljava/lang/String;
    array-length v10, v6

    add-int/lit8 v3, v10, -0x1

    .line 338
    .local v3, "last":I
    move-object v9, p0

    .line 339
    .local v9, "target":Ltwitter4j/JSONObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    if-ge v0, v3, :cond_4e

    .line 340
    aget-object v8, v6, v0

    .line 341
    .local v8, "segment":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 342
    .local v5, "object":Ljava/lang/Object;
    instance-of v10, v5, Ltwitter4j/JSONObject;

    if-eqz v10, :cond_4c

    check-cast v5, Ltwitter4j/JSONObject;

    .end local v5    # "object":Ljava/lang/Object;
    move-object v4, v5

    .line 343
    .local v4, "nextTarget":Ltwitter4j/JSONObject;
    :goto_3e
    if-nez v4, :cond_48

    .line 344
    new-instance v4, Ltwitter4j/JSONObject;

    .end local v4    # "nextTarget":Ltwitter4j/JSONObject;
    invoke-direct {v4}, Ltwitter4j/JSONObject;-><init>()V

    .line 345
    .restart local v4    # "nextTarget":Ltwitter4j/JSONObject;
    invoke-virtual {v9, v8, v4}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 347
    :cond_48
    move-object v9, v4

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 342
    .end local v4    # "nextTarget":Ltwitter4j/JSONObject;
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_4c
    const/4 v4, 0x0

    goto :goto_3e

    .line 349
    .end local v5    # "object":Ljava/lang/Object;
    .end local v8    # "segment":Ljava/lang/String;
    :cond_4e
    aget-object v10, v6, v3

    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v7, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    goto :goto_13

    .line 352
    .end local v0    # "i":I
    .end local v3    # "last":I
    .end local v6    # "path":[Ljava/lang/String;
    .end local v9    # "target":Ltwitter4j/JSONObject;
    :cond_5a
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 9
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    .line 237
    if-eqz p1, :cond_35

    .line 238
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "o":Ljava/lang/Object;
    move-object v0, v1

    .line 239
    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_14

    .line 242
    iget-object v4, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Ltwitter4j/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 246
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_35
    return-void
.end method

.method public constructor <init>(Ltwitter4j/JSONObject;[Ljava/lang/String;)V
    .registers 7
    .param p1, "jo"    # Ltwitter4j/JSONObject;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Ltwitter4j/JSONObject;-><init>()V

    .line 161
    array-length v2, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_13

    aget-object v0, p2, v1

    .line 163
    .local v0, "name":Ljava/lang/String;
    :try_start_9
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Ltwitter4j/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_14

    .line 161
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 167
    .end local v0    # "name":Ljava/lang/String;
    :cond_13
    return-void

    .line 164
    .restart local v0    # "name":Ljava/lang/String;
    :catch_14
    move-exception v3

    goto :goto_10
.end method

.method public constructor <init>(Ltwitter4j/JSONTokener;)V
    .registers 6
    .param p1, "x"    # Ltwitter4j/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ltwitter4j/JSONObject;-><init>()V

    .line 182
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_2a

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A JSONObject text must begin with \'{\' found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v2

    throw v2

    .line 217
    .local v0, "c":C
    .local v1, "key":Ljava/lang/String;
    :cond_27
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->back()V

    .line 186
    .end local v0    # "c":C
    .end local v1    # "key":Ljava/lang/String;
    :cond_2a
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v0

    .line 187
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_80

    .line 193
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->back()V

    .line 194
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v0

    .line 200
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_6b

    .line 201
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4f

    .line 202
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->back()V

    .line 207
    :cond_4f
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 211
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_8a

    .line 222
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v2

    throw v2

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_64
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v2

    throw v2

    .line 204
    .restart local v1    # "key":Ljava/lang/String;
    :cond_6b
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_4f

    .line 205
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v2

    throw v2

    .line 214
    :sswitch_76
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_27

    .line 220
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_7e
    return-void

    .line 187
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_64
        0x7d -> :sswitch_7e
    .end sparse-switch

    .line 211
    :sswitch_data_8a
    .sparse-switch
        0x2c -> :sswitch_76
        0x3b -> :sswitch_76
        0x7d -> :sswitch_7e
    .end sparse-switch
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 580
    if-nez p0, :cond_b

    .line 581
    new-instance v1, Ltwitter4j/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_b
    invoke-static {p0}, Ltwitter4j/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "string":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4f

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4f

    const/16 v1, 0x45

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4f

    .line 590
    :goto_2a
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 591
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 593
    :cond_3d
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 594
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 597
    :cond_4f
    return-object v0
.end method

.method private populateMap(Ljava/lang/Object;)V
    .registers 16
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 617
    .local v2, "klass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    if-eqz v9, :cond_7c

    move v0, v10

    .line 619
    .local v0, "includeSuperClass":Z
    :goto_d
    if-eqz v0, :cond_7e

    .line 620
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 621
    .local v5, "methods":[Ljava/lang/reflect/Method;
    :goto_13
    array-length v11, v5

    move v9, v8

    :goto_15
    if-ge v9, v11, :cond_c3

    aget-object v4, v5, v9

    .line 623
    .local v4, "method1":Ljava/lang/reflect/Method;
    move-object v3, v4

    .line 624
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_1a
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 625
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 626
    .local v6, "name":Ljava/lang/String;
    const-string v1, ""

    .line 627
    .local v1, "key":Ljava/lang/String;
    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 628
    const-string v8, "getClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    const-string v8, "getDeclaringClass"

    .line 629
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 630
    :cond_42
    const-string v1, ""

    .line 637
    :cond_44
    :goto_44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_78

    const/4 v8, 0x0

    .line 638
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 639
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_78

    .line 640
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v10, :cond_97

    .line 641
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 647
    :cond_66
    :goto_66
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 648
    .local v7, "result":Ljava/lang/Object;
    if-eqz v7, :cond_78

    .line 649
    iget-object v8, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-static {v7}, Ltwitter4j/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_78} :catch_c4

    .line 621
    .end local v1    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/Object;
    :cond_78
    :goto_78
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_15

    .end local v0    # "includeSuperClass":Z
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "method1":Ljava/lang/reflect/Method;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_7c
    move v0, v8

    .line 617
    goto :goto_d

    .line 620
    .restart local v0    # "includeSuperClass":Z
    :cond_7e
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_13

    .line 632
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "method1":Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_83
    const/4 v8, 0x3

    :try_start_84
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 634
    :cond_89
    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 635
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 642
    :cond_97
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_66

    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v12, 0x1

    .line 644
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_c1} :catch_c4

    move-result-object v1

    goto :goto_66

    .line 656
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "method1":Ljava/lang/reflect/Method;
    .end local v6    # "name":Ljava/lang/String;
    :cond_c3
    return-void

    .line 653
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "method1":Ljava/lang/reflect/Method;
    :catch_c4
    move-exception v8

    goto :goto_78
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 821
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    .line 822
    :cond_c
    const-string v6, "\"\""

    .line 874
    :goto_e
    return-object v6

    .line 826
    :cond_f
    const/4 v1, 0x0

    .line 829
    .local v1, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 830
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 832
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v4, :cond_9e

    .line 834
    move v0, v1

    .line 835
    .local v0, "b":C
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 836
    sparse-switch v1, :sswitch_data_a8

    .line 864
    const/16 v6, 0x20

    if-lt v1, v6, :cond_3d

    const/16 v6, 0x80

    if-lt v1, v6, :cond_35

    const/16 v6, 0xa0

    if-lt v1, v6, :cond_3d

    :cond_35
    const/16 v6, 0x2000

    if-lt v1, v6, :cond_9a

    const/16 v6, 0x2100

    if-ge v1, v6, :cond_9a

    .line 866
    :cond_3d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "hhhh":Ljava/lang/String;
    const-string v6, "\\u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .end local v2    # "hhhh":Ljava/lang/String;
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 839
    :sswitch_6a
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 843
    :sswitch_71
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_78

    .line 844
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    :cond_78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 849
    :sswitch_7c
    const-string v6, "\\b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 852
    :sswitch_82
    const-string v6, "\\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 855
    :sswitch_88
    const-string v6, "\\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 858
    :sswitch_8e
    const-string v6, "\\f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 861
    :sswitch_94
    const-string v6, "\\r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 869
    :cond_9a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 873
    .end local v0    # "b":C
    :cond_9e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e

    .line 836
    nop

    :sswitch_data_a8
    .sparse-switch
        0x8 -> :sswitch_7c
        0x9 -> :sswitch_82
        0xa -> :sswitch_88
        0xc -> :sswitch_8e
        0xd -> :sswitch_94
        0x22 -> :sswitch_6a
        0x2f -> :sswitch_71
        0x5c -> :sswitch_6a
    .end sparse-switch
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 906
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 952
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "b":C
    :cond_f
    :goto_f
    return-object p0

    .line 909
    .end local v0    # "b":C
    .restart local p0    # "string":Ljava/lang/String;
    :cond_10
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 910
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    .line 912
    :cond_1b
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 913
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    .line 915
    :cond_26
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 916
    sget-object p0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_f

    .line 928
    :cond_31
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 929
    .restart local v0    # "b":C
    if-lt v0, v7, :cond_3c

    const/16 v2, 0x39

    if-le v0, v2, :cond_46

    :cond_3c
    if-eq v0, v6, :cond_46

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_46

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_f

    .line 930
    :cond_46
    if-ne v0, v7, :cond_6f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_6f

    .line 931
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_5e

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_6f

    .line 933
    :cond_5e
    const/4 v2, 0x2

    :try_start_5f
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6c} :catch_6e

    move-result-object p0

    goto :goto_f

    .line 934
    :catch_6e
    move-exception v2

    .line 938
    :cond_6f
    const/16 v2, 0x2e

    :try_start_71
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_87

    const/16 v2, 0x65

    .line 939
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_87

    const/16 v2, 0x45

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_8c

    .line 940
    :cond_87
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_f

    .line 942
    :cond_8c
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 943
    .local v1, "myLong":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a8

    .line 944
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a5} :catch_ab

    move-result-object p0

    goto/16 :goto_f

    :cond_a8
    move-object p0, v1

    .line 946
    goto/16 :goto_f

    .line 949
    .end local v1    # "myLong":Ljava/lang/Long;
    :catch_ab
    move-exception v2

    goto/16 :goto_f
.end method

.method public static testValidity(Ljava/lang/Object;)V
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 963
    if-eqz p0, :cond_3c

    .line 964
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1f

    move-object v0, p0

    .line 965
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_17

    check-cast p0, Ljava/lang/Double;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 966
    :cond_17
    new-instance v0, Ltwitter4j/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1f
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3c

    move-object v0, p0

    .line 970
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_34

    check-cast p0, Ljava/lang/Float;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 971
    :cond_34
    new-instance v0, Ltwitter4j/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_3c
    return-void
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 1111
    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1112
    :cond_9
    const-string v0, "null"

    .line 1130
    :goto_b
    return-object v0

    .line 1114
    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 1115
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ltwitter4j/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1117
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_17
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_23

    instance-of v0, p0, Ltwitter4j/JSONObject;

    if-nez v0, :cond_23

    instance-of v0, p0, Ltwitter4j/JSONArray;

    if-eqz v0, :cond_28

    .line 1119
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1121
    :cond_28
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_38

    .line 1122
    new-instance v0, Ltwitter4j/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1124
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_38
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_48

    .line 1125
    new-instance v0, Ltwitter4j/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ltwitter4j/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1127
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1128
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ltwitter4j/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1130
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 1151
    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1152
    :cond_9
    const-string v0, "null"

    .line 1175
    .end local p0    # "value":Ljava/lang/Object;
    :goto_b
    return-object v0

    .line 1154
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 1155
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ltwitter4j/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1157
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_17
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    .line 1158
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1160
    :cond_20
    instance-of v0, p0, Ltwitter4j/JSONObject;

    if-eqz v0, :cond_2b

    .line 1161
    check-cast p0, Ltwitter4j/JSONObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1163
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2b
    instance-of v0, p0, Ltwitter4j/JSONArray;

    if-eqz v0, :cond_36

    .line 1164
    check-cast p0, Ltwitter4j/JSONArray;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1166
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_36
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_46

    .line 1167
    new-instance v0, Ltwitter4j/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1169
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_46
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_56

    .line 1170
    new-instance v0, Ltwitter4j/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1172
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1173
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1175
    :cond_6a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1193
    if-nez p0, :cond_5

    .line 1194
    :try_start_2
    sget-object p0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    .line 1224
    .end local p0    # "object":Ljava/lang/Object;
    :cond_4
    :goto_4
    return-object p0

    .line 1196
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v3, p0, Ltwitter4j/JSONObject;

    if-nez v3, :cond_4

    instance-of v3, p0, Ltwitter4j/JSONArray;

    if-nez v3, :cond_4

    sget-object v3, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    .line 1197
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Byte;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Character;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Short;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Integer;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Long;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Boolean;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Float;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_4

    .line 1206
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_46

    .line 1207
    new-instance v3, Ltwitter4j/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v3, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v3

    goto :goto_4

    .line 1209
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1210
    new-instance v3, Ltwitter4j/JSONArray;

    invoke-direct {v3, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_4

    .line 1212
    :cond_57
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_64

    .line 1213
    new-instance v3, Ltwitter4j/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v3, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v3

    goto :goto_4

    .line 1215
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1216
    .local v1, "objectPackage":Ljava/lang/Package;
    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1217
    .local v2, "objectPackageName":Ljava/lang/String;
    :goto_72
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "javax."

    .line 1218
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 1219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_95

    .line 1220
    :cond_8c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 1216
    .end local v2    # "objectPackageName":Ljava/lang/String;
    :cond_92
    const-string v2, ""

    goto :goto_72

    .line 1222
    .restart local v2    # "objectPackageName":Ljava/lang/String;
    :cond_95
    new-instance v3, Ltwitter4j/JSONObject;

    invoke-direct {v3, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9a} :catch_9d

    move-object p0, v3

    goto/16 :goto_4

    .line 1223
    .end local v1    # "objectPackage":Ljava/lang/Package;
    .end local v2    # "objectPackageName":Ljava/lang/String;
    :catch_9d
    move-exception v0

    .line 1224
    .local v0, "exception":Ljava/lang/Exception;
    const/4 p0, 0x0

    goto/16 :goto_4
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {p2}, Ltwitter4j/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 369
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_16

    .line 370
    new-instance v1, Ltwitter4j/JSONArray;

    invoke-direct {v1}, Ltwitter4j/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 377
    .end local v0    # "object":Ljava/lang/Object;
    :goto_15
    return-object p0

    .line 371
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_16
    instance-of v1, v0, Ltwitter4j/JSONArray;

    if-eqz v1, :cond_24

    .line 372
    check-cast v0, Ltwitter4j/JSONArray;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    goto :goto_15

    .line 374
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_24
    new-instance v1, Ltwitter4j/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 388
    if-nez p1, :cond_a

    .line 389
    new-instance v1, Ltwitter4j/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_a
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_33

    .line 393
    new-instance v1, Ltwitter4j/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_33
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 412
    :cond_1b
    const/4 v1, 0x0

    .line 416
    .end local v0    # "object":Ljava/lang/Object;
    :goto_1c
    return v1

    .line 413
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_35

    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    const-string v1, "true"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 416
    :cond_33
    const/4 v1, 0x1

    goto :goto_1c

    .line 418
    :cond_35
    new-instance v1, Ltwitter4j/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 433
    .local v1, "object":Ljava/lang/Object;
    :try_start_4
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/Number;

    .line 434
    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 435
    :goto_e
    return v2

    .line 434
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_f
    check-cast v1, Ljava/lang/String;

    .line 435
    .end local v1    # "object":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result v2

    goto :goto_e

    .line 436
    :catch_16
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not an int."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/JSONArray;

    if-eqz v1, :cond_b

    .line 454
    check-cast v0, Ltwitter4j/JSONArray;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    .line 456
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_b
    new-instance v1, Ltwitter4j/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 471
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ltwitter4j/JSONObject;

    if-eqz v1, :cond_b

    .line 472
    check-cast v0, Ltwitter4j/JSONObject;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    .line 474
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_b
    new-instance v1, Ltwitter4j/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 490
    .local v1, "object":Ljava/lang/Object;
    :try_start_4
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/Number;

    .line 491
    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 492
    :goto_e
    return-wide v2

    .line 491
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_f
    check-cast v1, Ljava/lang/String;

    .line 492
    .end local v1    # "object":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result-wide v2

    goto :goto_e

    .line 493
    :catch_16
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ltwitter4j/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a long."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 508
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v0, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 531
    sget-object v0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Ltwitter4j/JSONArray;
    .registers 4

    .prologue
    .line 563
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0}, Ltwitter4j/JSONArray;-><init>()V

    .line 564
    .local v0, "ja":Ltwitter4j/JSONArray;
    invoke-virtual {p0}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 565
    .local v1, "keys":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    goto :goto_9

    .line 568
    :cond_17
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1e

    const/4 v0, 0x0

    .end local v0    # "ja":Ltwitter4j/JSONArray;
    :cond_1e
    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 608
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public put(Ljava/lang/String;D)Ltwitter4j/JSONObject;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 697
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 698
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Ltwitter4j/JSONObject;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 712
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Ltwitter4j/JSONObject;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 726
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 758
    if-nez p1, :cond_a

    .line 759
    new-instance v0, Ltwitter4j/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_a
    if-eqz p2, :cond_15

    .line 762
    invoke-static {p2}, Ltwitter4j/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 763
    iget-object v0, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :goto_14
    return-object p0

    .line 765
    :cond_15
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Ltwitter4j/JSONObject;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0, p2}, Ltwitter4j/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 684
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Ltwitter4j/JSONObject;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p2}, Ltwitter4j/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 741
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Ltwitter4j/JSONObject;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 668
    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 669
    return-object p0

    .line 668
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 782
    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    .line 783
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 784
    new-instance v0, Ltwitter4j/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_29
    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 788
    :cond_2c
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 804
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 805
    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 807
    :cond_7
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v0, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sortedKeys()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 895
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 992
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 993
    .local v1, "keys":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 996
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    .line 997
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 999
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1000
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    iget-object v4, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1006
    .end local v1    # "keys":Ljava/util/Iterator;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_3f
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-object v4

    .line 1004
    .restart local v1    # "keys":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_42
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_3f

    move-result-object v4

    goto :goto_41
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .param p1, "indentFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .registers 13
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1046
    invoke-virtual {p0}, Ltwitter4j/JSONObject;->length()I

    move-result v2

    .line 1047
    .local v2, "length":I
    if-nez v2, :cond_e

    .line 1048
    const-string v6, "{}"

    .line 1084
    :goto_d
    return-object v6

    .line 1050
    :cond_e
    invoke-virtual {p0}, Ltwitter4j/JSONObject;->sortedKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 1051
    .local v1, "keys":Ljava/util/Iterator;
    add-int v3, p2, p1

    .line 1053
    .local v3, "newindent":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-ne v2, v7, :cond_65

    .line 1055
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1056
    .local v4, "object":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v6, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, p2}, Ltwitter4j/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .end local v4    # "object":Ljava/lang/Object;
    :cond_3e
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 1071
    .local v0, "i":I
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_48
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v6, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Ltwitter4j/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .end local v0    # "i":I
    .end local v4    # "object":Ljava/lang/Object;
    :cond_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 1062
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1063
    .restart local v4    # "object":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v7, :cond_83

    .line 1064
    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    :goto_7a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7b
    if-ge v0, v3, :cond_48

    .line 1069
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 1066
    .end local v0    # "i":I
    :cond_83
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 1076
    .end local v4    # "object":Ljava/lang/Object;
    :cond_87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v7, :cond_3e

    .line 1077
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    const/4 v0, 0x0

    :goto_91
    if-ge v0, p2, :cond_3e

    .line 1079
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    add-int/lit8 v0, v0, 0x1

    goto :goto_91
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .registers 8
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .prologue
    .line 1240
    const/4 v0, 0x0

    .line 1241
    .local v0, "commanate":Z
    :try_start_1
    invoke-virtual {p0}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1242
    .local v3, "keys":Ljava/util/Iterator;
    const/16 v5, 0x7b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1244
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1245
    if-eqz v0, :cond_17

    .line 1246
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1248
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1249
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1250
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1251
    iget-object v5, p0, Ltwitter4j/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1252
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ltwitter4j/JSONObject;

    if-eqz v5, :cond_3c

    .line 1253
    check-cast v4, Ltwitter4j/JSONObject;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 1259
    :goto_3a
    const/4 v0, 0x1

    .line 1260
    goto :goto_a

    .line 1254
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3c
    instance-of v5, v4, Ltwitter4j/JSONArray;

    if-eqz v5, :cond_4d

    .line 1255
    check-cast v4, Ltwitter4j/JSONArray;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Ltwitter4j/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_45} :catch_46

    goto :goto_3a

    .line 1263
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":Ljava/util/Iterator;
    :catch_46
    move-exception v1

    .line 1264
    .local v1, "exception":Ljava/io/IOException;
    new-instance v5, Ltwitter4j/JSONException;

    invoke-direct {v5, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1257
    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v2    # "key":Ljava/lang/Object;
    .restart local v3    # "keys":Ljava/util/Iterator;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4d
    :try_start_4d
    invoke-static {v4}, Ltwitter4j/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3a

    .line 1261
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_55
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5a} :catch_46

    .line 1262
    return-object p1
.end method
