.class final Ltwitter4j/HTMLEntity;
.super Ljava/lang/Object;
.source "HTMLEntity.java"


# static fields
.field private static final entityEscapeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final escapeEntityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 163
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ltwitter4j/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    .line 164
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    .line 167
    const/16 v2, 0xfb

    new-array v0, v2, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "&nbsp;"

    aput-object v4, v2, v3

    const-string v4, "&#160;"

    aput-object v4, v2, v9

    const-string v4, "\u00a0"

    aput-object v4, v2, v8

    aput-object v2, v0, v3

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "&iexcl;"

    aput-object v4, v2, v3

    const-string v4, "&#161;"

    aput-object v4, v2, v9

    const-string v4, "\u00a1"

    aput-object v4, v2, v8

    aput-object v2, v0, v9

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "&cent;"

    aput-object v4, v2, v3

    const-string v4, "&#162;"

    aput-object v4, v2, v9

    const-string v4, "\u00a2"

    aput-object v4, v2, v8

    aput-object v2, v0, v8

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "&pound;"

    aput-object v4, v2, v3

    const-string v4, "&#163;"

    aput-object v4, v2, v9

    const-string v4, "\u00a3"

    aput-object v4, v2, v8

    aput-object v2, v0, v6

    const/4 v2, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&curren;"

    aput-object v5, v4, v3

    const-string v5, "&#164;"

    aput-object v5, v4, v9

    const-string v5, "\u00a4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/4 v2, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&yen;"

    aput-object v5, v4, v3

    const-string v5, "&#165;"

    aput-object v5, v4, v9

    const-string v5, "\u00a5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/4 v2, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&brvbar;"

    aput-object v5, v4, v3

    const-string v5, "&#166;"

    aput-object v5, v4, v9

    const-string v5, "\u00a6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/4 v2, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sect;"

    aput-object v5, v4, v3

    const-string v5, "&#167;"

    aput-object v5, v4, v9

    const-string v5, "\u00a7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&uml;"

    aput-object v5, v4, v3

    const-string v5, "&#168;"

    aput-object v5, v4, v9

    const-string v5, "\u00a8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&copy;"

    aput-object v5, v4, v3

    const-string v5, "&#169;"

    aput-object v5, v4, v9

    const-string v5, "\u00a9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ordf;"

    aput-object v5, v4, v3

    const-string v5, "&#170;"

    aput-object v5, v4, v9

    const-string v5, "\u00aa"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&laquo;"

    aput-object v5, v4, v3

    const-string v5, "&#171;"

    aput-object v5, v4, v9

    const-string v5, "\u00ab"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&not;"

    aput-object v5, v4, v3

    const-string v5, "&#172;"

    aput-object v5, v4, v9

    const-string v5, "\u00ac"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&shy;"

    aput-object v5, v4, v3

    const-string v5, "&#173;"

    aput-object v5, v4, v9

    const-string v5, "\u00ad"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&reg;"

    aput-object v5, v4, v3

    const-string v5, "&#174;"

    aput-object v5, v4, v9

    const-string v5, "\u00ae"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&macr;"

    aput-object v5, v4, v3

    const-string v5, "&#175;"

    aput-object v5, v4, v9

    const-string v5, "\u00af"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x10

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&deg;"

    aput-object v5, v4, v3

    const-string v5, "&#176;"

    aput-object v5, v4, v9

    const-string v5, "\u00b0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x11

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&plusmn;"

    aput-object v5, v4, v3

    const-string v5, "&#177;"

    aput-object v5, v4, v9

    const-string v5, "\u00b1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x12

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sup2;"

    aput-object v5, v4, v3

    const-string v5, "&#178;"

    aput-object v5, v4, v9

    const-string v5, "\u00b2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x13

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sup3;"

    aput-object v5, v4, v3

    const-string v5, "&#179;"

    aput-object v5, v4, v9

    const-string v5, "\u00b3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x14

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&acute;"

    aput-object v5, v4, v3

    const-string v5, "&#180;"

    aput-object v5, v4, v9

    const-string v5, "\u00b4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x15

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&micro;"

    aput-object v5, v4, v3

    const-string v5, "&#181;"

    aput-object v5, v4, v9

    const-string v5, "\u00b5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x16

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&para;"

    aput-object v5, v4, v3

    const-string v5, "&#182;"

    aput-object v5, v4, v9

    const-string v5, "\u00b6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x17

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&middot;"

    aput-object v5, v4, v3

    const-string v5, "&#183;"

    aput-object v5, v4, v9

    const-string v5, "\u00b7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x18

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&cedil;"

    aput-object v5, v4, v3

    const-string v5, "&#184;"

    aput-object v5, v4, v9

    const-string v5, "\u00b8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x19

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sup1;"

    aput-object v5, v4, v3

    const-string v5, "&#185;"

    aput-object v5, v4, v9

    const-string v5, "\u00b9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x1a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ordm;"

    aput-object v5, v4, v3

    const-string v5, "&#186;"

    aput-object v5, v4, v9

    const-string v5, "\u00ba"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x1b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&raquo;"

    aput-object v5, v4, v3

    const-string v5, "&#187;"

    aput-object v5, v4, v9

    const-string v5, "\u00bb"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x1c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&frac14;"

    aput-object v5, v4, v3

    const-string v5, "&#188;"

    aput-object v5, v4, v9

    const-string v5, "\u00bc"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x1d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&frac12;"

    aput-object v5, v4, v3

    const-string v5, "&#189;"

    aput-object v5, v4, v9

    const-string v5, "\u00bd"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x1e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&frac34;"

    aput-object v5, v4, v3

    const-string v5, "&#190;"

    aput-object v5, v4, v9

    const-string v5, "\u00be"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x1f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&iquest;"

    aput-object v5, v4, v3

    const-string v5, "&#191;"

    aput-object v5, v4, v9

    const-string v5, "\u00bf"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x20

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Agrave;"

    aput-object v5, v4, v3

    const-string v5, "&#192;"

    aput-object v5, v4, v9

    const-string v5, "\u00c0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x21

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Aacute;"

    aput-object v5, v4, v3

    const-string v5, "&#193;"

    aput-object v5, v4, v9

    const-string v5, "\u00c1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x22

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Acirc;"

    aput-object v5, v4, v3

    const-string v5, "&#194;"

    aput-object v5, v4, v9

    const-string v5, "\u00c2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x23

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Atilde;"

    aput-object v5, v4, v3

    const-string v5, "&#195;"

    aput-object v5, v4, v9

    const-string v5, "\u00c3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x24

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Auml;"

    aput-object v5, v4, v3

    const-string v5, "&#196;"

    aput-object v5, v4, v9

    const-string v5, "\u00c4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x25

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Aring;"

    aput-object v5, v4, v3

    const-string v5, "&#197;"

    aput-object v5, v4, v9

    const-string v5, "\u00c5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x26

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&AElig;"

    aput-object v5, v4, v3

    const-string v5, "&#198;"

    aput-object v5, v4, v9

    const-string v5, "\u00c6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x27

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ccedil;"

    aput-object v5, v4, v3

    const-string v5, "&#199;"

    aput-object v5, v4, v9

    const-string v5, "\u00c7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x28

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Egrave;"

    aput-object v5, v4, v3

    const-string v5, "&#200;"

    aput-object v5, v4, v9

    const-string v5, "\u00c8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x29

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Eacute;"

    aput-object v5, v4, v3

    const-string v5, "&#201;"

    aput-object v5, v4, v9

    const-string v5, "\u00c9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x2a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ecirc;"

    aput-object v5, v4, v3

    const-string v5, "&#202;"

    aput-object v5, v4, v9

    const-string v5, "\u00ca"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x2b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Euml;"

    aput-object v5, v4, v3

    const-string v5, "&#203;"

    aput-object v5, v4, v9

    const-string v5, "\u00cb"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x2c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Igrave;"

    aput-object v5, v4, v3

    const-string v5, "&#204;"

    aput-object v5, v4, v9

    const-string v5, "\u00cc"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x2d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Iacute;"

    aput-object v5, v4, v3

    const-string v5, "&#205;"

    aput-object v5, v4, v9

    const-string v5, "\u00cd"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x2e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Icirc;"

    aput-object v5, v4, v3

    const-string v5, "&#206;"

    aput-object v5, v4, v9

    const-string v5, "\u00ce"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x2f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Iuml;"

    aput-object v5, v4, v3

    const-string v5, "&#207;"

    aput-object v5, v4, v9

    const-string v5, "\u00cf"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x30

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ETH;"

    aput-object v5, v4, v3

    const-string v5, "&#208;"

    aput-object v5, v4, v9

    const-string v5, "\u00d0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x31

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ntilde;"

    aput-object v5, v4, v3

    const-string v5, "&#209;"

    aput-object v5, v4, v9

    const-string v5, "\u00d1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x32

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ograve;"

    aput-object v5, v4, v3

    const-string v5, "&#210;"

    aput-object v5, v4, v9

    const-string v5, "\u00d2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x33

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Oacute;"

    aput-object v5, v4, v3

    const-string v5, "&#211;"

    aput-object v5, v4, v9

    const-string v5, "\u00d3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x34

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ocirc;"

    aput-object v5, v4, v3

    const-string v5, "&#212;"

    aput-object v5, v4, v9

    const-string v5, "\u00d4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x35

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Otilde;"

    aput-object v5, v4, v3

    const-string v5, "&#213;"

    aput-object v5, v4, v9

    const-string v5, "\u00d5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x36

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ouml;"

    aput-object v5, v4, v3

    const-string v5, "&#214;"

    aput-object v5, v4, v9

    const-string v5, "\u00d6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x37

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&times;"

    aput-object v5, v4, v3

    const-string v5, "&#215;"

    aput-object v5, v4, v9

    const-string v5, "\u00d7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x38

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Oslash;"

    aput-object v5, v4, v3

    const-string v5, "&#216;"

    aput-object v5, v4, v9

    const-string v5, "\u00d8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x39

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ugrave;"

    aput-object v5, v4, v3

    const-string v5, "&#217;"

    aput-object v5, v4, v9

    const-string v5, "\u00d9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x3a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Uacute;"

    aput-object v5, v4, v3

    const-string v5, "&#218;"

    aput-object v5, v4, v9

    const-string v5, "\u00da"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x3b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Ucirc;"

    aput-object v5, v4, v3

    const-string v5, "&#219;"

    aput-object v5, v4, v9

    const-string v5, "\u00db"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x3c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Uuml;"

    aput-object v5, v4, v3

    const-string v5, "&#220;"

    aput-object v5, v4, v9

    const-string v5, "\u00dc"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x3d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Yacute;"

    aput-object v5, v4, v3

    const-string v5, "&#221;"

    aput-object v5, v4, v9

    const-string v5, "\u00dd"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x3e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&THORN;"

    aput-object v5, v4, v3

    const-string v5, "&#222;"

    aput-object v5, v4, v9

    const-string v5, "\u00de"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x3f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&szlig;"

    aput-object v5, v4, v3

    const-string v5, "&#223;"

    aput-object v5, v4, v9

    const-string v5, "\u00df"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x40

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&agrave;"

    aput-object v5, v4, v3

    const-string v5, "&#224;"

    aput-object v5, v4, v9

    const-string v5, "\u00e0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x41

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&aacute;"

    aput-object v5, v4, v3

    const-string v5, "&#225;"

    aput-object v5, v4, v9

    const-string v5, "\u00e1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x42

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&acirc;"

    aput-object v5, v4, v3

    const-string v5, "&#226;"

    aput-object v5, v4, v9

    const-string v5, "\u00e2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x43

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&atilde;"

    aput-object v5, v4, v3

    const-string v5, "&#227;"

    aput-object v5, v4, v9

    const-string v5, "\u00e3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x44

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&auml;"

    aput-object v5, v4, v3

    const-string v5, "&#228;"

    aput-object v5, v4, v9

    const-string v5, "\u00e4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x45

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&aring;"

    aput-object v5, v4, v3

    const-string v5, "&#229;"

    aput-object v5, v4, v9

    const-string v5, "\u00e5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x46

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&aelig;"

    aput-object v5, v4, v3

    const-string v5, "&#230;"

    aput-object v5, v4, v9

    const-string v5, "\u00e6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x47

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ccedil;"

    aput-object v5, v4, v3

    const-string v5, "&#231;"

    aput-object v5, v4, v9

    const-string v5, "\u00e7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x48

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&egrave;"

    aput-object v5, v4, v3

    const-string v5, "&#232;"

    aput-object v5, v4, v9

    const-string v5, "\u00e8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x49

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&eacute;"

    aput-object v5, v4, v3

    const-string v5, "&#233;"

    aput-object v5, v4, v9

    const-string v5, "\u00e9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x4a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ecirc;"

    aput-object v5, v4, v3

    const-string v5, "&#234;"

    aput-object v5, v4, v9

    const-string v5, "\u00ea"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x4b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&euml;"

    aput-object v5, v4, v3

    const-string v5, "&#235;"

    aput-object v5, v4, v9

    const-string v5, "\u00eb"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x4c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&igrave;"

    aput-object v5, v4, v3

    const-string v5, "&#236;"

    aput-object v5, v4, v9

    const-string v5, "\u00ec"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x4d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&iacute;"

    aput-object v5, v4, v3

    const-string v5, "&#237;"

    aput-object v5, v4, v9

    const-string v5, "\u00ed"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x4e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&icirc;"

    aput-object v5, v4, v3

    const-string v5, "&#238;"

    aput-object v5, v4, v9

    const-string v5, "\u00ee"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x4f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&iuml;"

    aput-object v5, v4, v3

    const-string v5, "&#239;"

    aput-object v5, v4, v9

    const-string v5, "\u00ef"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x50

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&eth;"

    aput-object v5, v4, v3

    const-string v5, "&#240;"

    aput-object v5, v4, v9

    const-string v5, "\u00f0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x51

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ntilde;"

    aput-object v5, v4, v3

    const-string v5, "&#241;"

    aput-object v5, v4, v9

    const-string v5, "\u00f1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x52

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ograve;"

    aput-object v5, v4, v3

    const-string v5, "&#242;"

    aput-object v5, v4, v9

    const-string v5, "\u00f2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x53

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&oacute;"

    aput-object v5, v4, v3

    const-string v5, "&#243;"

    aput-object v5, v4, v9

    const-string v5, "\u00f3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x54

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ocirc;"

    aput-object v5, v4, v3

    const-string v5, "&#244;"

    aput-object v5, v4, v9

    const-string v5, "\u00f4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x55

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&otilde;"

    aput-object v5, v4, v3

    const-string v5, "&#245;"

    aput-object v5, v4, v9

    const-string v5, "\u00f5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x56

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ouml;"

    aput-object v5, v4, v3

    const-string v5, "&#246;"

    aput-object v5, v4, v9

    const-string v5, "\u00f6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x57

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&divide;"

    aput-object v5, v4, v3

    const-string v5, "&#247;"

    aput-object v5, v4, v9

    const-string v5, "\u00f7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x58

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&oslash;"

    aput-object v5, v4, v3

    const-string v5, "&#248;"

    aput-object v5, v4, v9

    const-string v5, "\u00f8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x59

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ugrave;"

    aput-object v5, v4, v3

    const-string v5, "&#249;"

    aput-object v5, v4, v9

    const-string v5, "\u00f9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x5a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&uacute;"

    aput-object v5, v4, v3

    const-string v5, "&#250;"

    aput-object v5, v4, v9

    const-string v5, "\u00fa"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x5b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ucirc;"

    aput-object v5, v4, v3

    const-string v5, "&#251;"

    aput-object v5, v4, v9

    const-string v5, "\u00fb"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x5c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&uuml;"

    aput-object v5, v4, v3

    const-string v5, "&#252;"

    aput-object v5, v4, v9

    const-string v5, "\u00fc"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x5d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&yacute;"

    aput-object v5, v4, v3

    const-string v5, "&#253;"

    aput-object v5, v4, v9

    const-string v5, "\u00fd"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x5e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&thorn;"

    aput-object v5, v4, v3

    const-string v5, "&#254;"

    aput-object v5, v4, v9

    const-string v5, "\u00fe"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x5f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&yuml;"

    aput-object v5, v4, v3

    const-string v5, "&#255;"

    aput-object v5, v4, v9

    const-string v5, "\u00ff"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x60

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&fnof;"

    aput-object v5, v4, v3

    const-string v5, "&#402;"

    aput-object v5, v4, v9

    const-string v5, "\u0192"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x61

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Alpha;"

    aput-object v5, v4, v3

    const-string v5, "&#913;"

    aput-object v5, v4, v9

    const-string v5, "\u0391"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x62

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Beta;"

    aput-object v5, v4, v3

    const-string v5, "&#914;"

    aput-object v5, v4, v9

    const-string v5, "\u0392"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x63

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Gamma;"

    aput-object v5, v4, v3

    const-string v5, "&#915;"

    aput-object v5, v4, v9

    const-string v5, "\u0393"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x64

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Delta;"

    aput-object v5, v4, v3

    const-string v5, "&#916;"

    aput-object v5, v4, v9

    const-string v5, "\u0394"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x65

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Epsilon;"

    aput-object v5, v4, v3

    const-string v5, "&#917;"

    aput-object v5, v4, v9

    const-string v5, "\u0395"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x66

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Zeta;"

    aput-object v5, v4, v3

    const-string v5, "&#918;"

    aput-object v5, v4, v9

    const-string v5, "\u0396"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x67

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Eta;"

    aput-object v5, v4, v3

    const-string v5, "&#919;"

    aput-object v5, v4, v9

    const-string v5, "\u0397"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x68

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Theta;"

    aput-object v5, v4, v3

    const-string v5, "&#920;"

    aput-object v5, v4, v9

    const-string v5, "\u0398"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x69

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Iota;"

    aput-object v5, v4, v3

    const-string v5, "&#921;"

    aput-object v5, v4, v9

    const-string v5, "\u0399"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x6a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Kappa;"

    aput-object v5, v4, v3

    const-string v5, "&#922;"

    aput-object v5, v4, v9

    const-string v5, "\u039a"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x6b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Lambda;"

    aput-object v5, v4, v3

    const-string v5, "&#923;"

    aput-object v5, v4, v9

    const-string v5, "\u039b"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x6c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Mu;"

    aput-object v5, v4, v3

    const-string v5, "&#924;"

    aput-object v5, v4, v9

    const-string v5, "\u039c"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x6d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Nu;"

    aput-object v5, v4, v3

    const-string v5, "&#925;"

    aput-object v5, v4, v9

    const-string v5, "\u039d"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x6e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Xi;"

    aput-object v5, v4, v3

    const-string v5, "&#926;"

    aput-object v5, v4, v9

    const-string v5, "\u039e"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x6f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Omicron;"

    aput-object v5, v4, v3

    const-string v5, "&#927;"

    aput-object v5, v4, v9

    const-string v5, "\u039f"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x70

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Pi;"

    aput-object v5, v4, v3

    const-string v5, "&#928;"

    aput-object v5, v4, v9

    const-string v5, "\u03a0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x71

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Rho;"

    aput-object v5, v4, v3

    const-string v5, "&#929;"

    aput-object v5, v4, v9

    const-string v5, "\u03a1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x72

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Sigma;"

    aput-object v5, v4, v3

    const-string v5, "&#931;"

    aput-object v5, v4, v9

    const-string v5, "\u03a3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x73

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Tau;"

    aput-object v5, v4, v3

    const-string v5, "&#932;"

    aput-object v5, v4, v9

    const-string v5, "\u03a4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x74

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Upsilon;"

    aput-object v5, v4, v3

    const-string v5, "&#933;"

    aput-object v5, v4, v9

    const-string v5, "\u03a5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x75

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Phi;"

    aput-object v5, v4, v3

    const-string v5, "&#934;"

    aput-object v5, v4, v9

    const-string v5, "\u03a6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x76

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Chi;"

    aput-object v5, v4, v3

    const-string v5, "&#935;"

    aput-object v5, v4, v9

    const-string v5, "\u03a7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x77

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Psi;"

    aput-object v5, v4, v3

    const-string v5, "&#936;"

    aput-object v5, v4, v9

    const-string v5, "\u03a8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x78

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Omega;"

    aput-object v5, v4, v3

    const-string v5, "&#937;"

    aput-object v5, v4, v9

    const-string v5, "\u03a9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x79

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&alpha;"

    aput-object v5, v4, v3

    const-string v5, "&#945;"

    aput-object v5, v4, v9

    const-string v5, "\u03b1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x7a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&beta;"

    aput-object v5, v4, v3

    const-string v5, "&#946;"

    aput-object v5, v4, v9

    const-string v5, "\u03b2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x7b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&gamma;"

    aput-object v5, v4, v3

    const-string v5, "&#947;"

    aput-object v5, v4, v9

    const-string v5, "\u03b3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x7c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&delta;"

    aput-object v5, v4, v3

    const-string v5, "&#948;"

    aput-object v5, v4, v9

    const-string v5, "\u03b4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x7d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&epsilon;"

    aput-object v5, v4, v3

    const-string v5, "&#949;"

    aput-object v5, v4, v9

    const-string v5, "\u03b5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x7e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&zeta;"

    aput-object v5, v4, v3

    const-string v5, "&#950;"

    aput-object v5, v4, v9

    const-string v5, "\u03b6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x7f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&eta;"

    aput-object v5, v4, v3

    const-string v5, "&#951;"

    aput-object v5, v4, v9

    const-string v5, "\u03b7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x80

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&theta;"

    aput-object v5, v4, v3

    const-string v5, "&#952;"

    aput-object v5, v4, v9

    const-string v5, "\u03b8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x81

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&iota;"

    aput-object v5, v4, v3

    const-string v5, "&#953;"

    aput-object v5, v4, v9

    const-string v5, "\u03b9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x82

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&kappa;"

    aput-object v5, v4, v3

    const-string v5, "&#954;"

    aput-object v5, v4, v9

    const-string v5, "\u03ba"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x83

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lambda;"

    aput-object v5, v4, v3

    const-string v5, "&#955;"

    aput-object v5, v4, v9

    const-string v5, "\u03bb"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x84

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&mu;"

    aput-object v5, v4, v3

    const-string v5, "&#956;"

    aput-object v5, v4, v9

    const-string v5, "\u03bc"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x85

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&nu;"

    aput-object v5, v4, v3

    const-string v5, "&#957;"

    aput-object v5, v4, v9

    const-string v5, "\u03bd"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x86

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&xi;"

    aput-object v5, v4, v3

    const-string v5, "&#958;"

    aput-object v5, v4, v9

    const-string v5, "\u03be"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x87

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&omicron;"

    aput-object v5, v4, v3

    const-string v5, "&#959;"

    aput-object v5, v4, v9

    const-string v5, "\u03bf"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x88

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&pi;"

    aput-object v5, v4, v3

    const-string v5, "&#960;"

    aput-object v5, v4, v9

    const-string v5, "\u03c0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x89

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rho;"

    aput-object v5, v4, v3

    const-string v5, "&#961;"

    aput-object v5, v4, v9

    const-string v5, "\u03c1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x8a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sigmaf;"

    aput-object v5, v4, v3

    const-string v5, "&#962;"

    aput-object v5, v4, v9

    const-string v5, "\u03c2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x8b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sigma;"

    aput-object v5, v4, v3

    const-string v5, "&#963;"

    aput-object v5, v4, v9

    const-string v5, "\u03c3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x8c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&tau;"

    aput-object v5, v4, v3

    const-string v5, "&#964;"

    aput-object v5, v4, v9

    const-string v5, "\u03c4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x8d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&upsilon;"

    aput-object v5, v4, v3

    const-string v5, "&#965;"

    aput-object v5, v4, v9

    const-string v5, "\u03c5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x8e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&phi;"

    aput-object v5, v4, v3

    const-string v5, "&#966;"

    aput-object v5, v4, v9

    const-string v5, "\u03c6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x8f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&chi;"

    aput-object v5, v4, v3

    const-string v5, "&#967;"

    aput-object v5, v4, v9

    const-string v5, "\u03c7"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x90

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&psi;"

    aput-object v5, v4, v3

    const-string v5, "&#968;"

    aput-object v5, v4, v9

    const-string v5, "\u03c8"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x91

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&omega;"

    aput-object v5, v4, v3

    const-string v5, "&#969;"

    aput-object v5, v4, v9

    const-string v5, "\u03c9"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x92

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&thetasym;"

    aput-object v5, v4, v3

    const-string v5, "&#977;"

    aput-object v5, v4, v9

    const-string v5, "\u03d1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x93

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&upsih;"

    aput-object v5, v4, v3

    const-string v5, "&#978;"

    aput-object v5, v4, v9

    const-string v5, "\u03d2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x94

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&piv;"

    aput-object v5, v4, v3

    const-string v5, "&#982;"

    aput-object v5, v4, v9

    const-string v5, "\u03d6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x95

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&bull;"

    aput-object v5, v4, v3

    const-string v5, "&#8226;"

    aput-object v5, v4, v9

    const-string v5, "\u2022"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x96

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&hellip;"

    aput-object v5, v4, v3

    const-string v5, "&#8230;"

    aput-object v5, v4, v9

    const-string v5, "\u2026"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x97

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&prime;"

    aput-object v5, v4, v3

    const-string v5, "&#8242;"

    aput-object v5, v4, v9

    const-string v5, "\u2032"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x98

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Prime;"

    aput-object v5, v4, v3

    const-string v5, "&#8243;"

    aput-object v5, v4, v9

    const-string v5, "\u2033"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x99

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&oline;"

    aput-object v5, v4, v3

    const-string v5, "&#8254;"

    aput-object v5, v4, v9

    const-string v5, "\u203e"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x9a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&frasl;"

    aput-object v5, v4, v3

    const-string v5, "&#8260;"

    aput-object v5, v4, v9

    const-string v5, "\u2044"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x9b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&weierp;"

    aput-object v5, v4, v3

    const-string v5, "&#8472;"

    aput-object v5, v4, v9

    const-string v5, "\u2118"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x9c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&image;"

    aput-object v5, v4, v3

    const-string v5, "&#8465;"

    aput-object v5, v4, v9

    const-string v5, "\u2111"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x9d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&real;"

    aput-object v5, v4, v3

    const-string v5, "&#8476;"

    aput-object v5, v4, v9

    const-string v5, "\u211c"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x9e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&trade;"

    aput-object v5, v4, v3

    const-string v5, "&#8482;"

    aput-object v5, v4, v9

    const-string v5, "\u2122"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0x9f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&alefsym;"

    aput-object v5, v4, v3

    const-string v5, "&#8501;"

    aput-object v5, v4, v9

    const-string v5, "\u2135"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&larr;"

    aput-object v5, v4, v3

    const-string v5, "&#8592;"

    aput-object v5, v4, v9

    const-string v5, "\u2190"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&uarr;"

    aput-object v5, v4, v3

    const-string v5, "&#8593;"

    aput-object v5, v4, v9

    const-string v5, "\u2191"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rarr;"

    aput-object v5, v4, v3

    const-string v5, "&#8594;"

    aput-object v5, v4, v9

    const-string v5, "\u2192"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&darr;"

    aput-object v5, v4, v3

    const-string v5, "&#8595;"

    aput-object v5, v4, v9

    const-string v5, "\u2193"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&harr;"

    aput-object v5, v4, v3

    const-string v5, "&#8596;"

    aput-object v5, v4, v9

    const-string v5, "\u2194"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&crarr;"

    aput-object v5, v4, v3

    const-string v5, "&#8629;"

    aput-object v5, v4, v9

    const-string v5, "\u21b5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lArr;"

    aput-object v5, v4, v3

    const-string v5, "&#8656;"

    aput-object v5, v4, v9

    const-string v5, "\u21d0"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&uArr;"

    aput-object v5, v4, v3

    const-string v5, "&#8657;"

    aput-object v5, v4, v9

    const-string v5, "\u21d1"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rArr;"

    aput-object v5, v4, v3

    const-string v5, "&#8658;"

    aput-object v5, v4, v9

    const-string v5, "\u21d2"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xa9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&dArr;"

    aput-object v5, v4, v3

    const-string v5, "&#8659;"

    aput-object v5, v4, v9

    const-string v5, "\u21d3"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xaa

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&hArr;"

    aput-object v5, v4, v3

    const-string v5, "&#8660;"

    aput-object v5, v4, v9

    const-string v5, "\u21d4"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xab

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&forall;"

    aput-object v5, v4, v3

    const-string v5, "&#8704;"

    aput-object v5, v4, v9

    const-string v5, "\u2200"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xac

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&part;"

    aput-object v5, v4, v3

    const-string v5, "&#8706;"

    aput-object v5, v4, v9

    const-string v5, "\u2202"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xad

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&exist;"

    aput-object v5, v4, v3

    const-string v5, "&#8707;"

    aput-object v5, v4, v9

    const-string v5, "\u2203"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xae

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&empty;"

    aput-object v5, v4, v3

    const-string v5, "&#8709;"

    aput-object v5, v4, v9

    const-string v5, "\u2205"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xaf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&nabla;"

    aput-object v5, v4, v3

    const-string v5, "&#8711;"

    aput-object v5, v4, v9

    const-string v5, "\u2207"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&isin;"

    aput-object v5, v4, v3

    const-string v5, "&#8712;"

    aput-object v5, v4, v9

    const-string v5, "\u2208"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&notin;"

    aput-object v5, v4, v3

    const-string v5, "&#8713;"

    aput-object v5, v4, v9

    const-string v5, "\u2209"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ni;"

    aput-object v5, v4, v3

    const-string v5, "&#8715;"

    aput-object v5, v4, v9

    const-string v5, "\u220b"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&prod;"

    aput-object v5, v4, v3

    const-string v5, "&#8719;"

    aput-object v5, v4, v9

    const-string v5, "\u220f"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sum;"

    aput-object v5, v4, v3

    const-string v5, "&#8721;"

    aput-object v5, v4, v9

    const-string v5, "\u2211"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&minus;"

    aput-object v5, v4, v3

    const-string v5, "&#8722;"

    aput-object v5, v4, v9

    const-string v5, "\u2212"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lowast;"

    aput-object v5, v4, v3

    const-string v5, "&#8727;"

    aput-object v5, v4, v9

    const-string v5, "\u2217"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&radic;"

    aput-object v5, v4, v3

    const-string v5, "&#8730;"

    aput-object v5, v4, v9

    const-string v5, "\u221a"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&prop;"

    aput-object v5, v4, v3

    const-string v5, "&#8733;"

    aput-object v5, v4, v9

    const-string v5, "\u221d"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xb9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&infin;"

    aput-object v5, v4, v3

    const-string v5, "&#8734;"

    aput-object v5, v4, v9

    const-string v5, "\u221e"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xba

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ang;"

    aput-object v5, v4, v3

    const-string v5, "&#8736;"

    aput-object v5, v4, v9

    const-string v5, "\u2220"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xbb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&and;"

    aput-object v5, v4, v3

    const-string v5, "&#8743;"

    aput-object v5, v4, v9

    const-string v5, "\u2227"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xbc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&or;"

    aput-object v5, v4, v3

    const-string v5, "&#8744;"

    aput-object v5, v4, v9

    const-string v5, "\u2228"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xbd

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&cap;"

    aput-object v5, v4, v3

    const-string v5, "&#8745;"

    aput-object v5, v4, v9

    const-string v5, "\u2229"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xbe

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&cup;"

    aput-object v5, v4, v3

    const-string v5, "&#8746;"

    aput-object v5, v4, v9

    const-string v5, "\u222a"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xbf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&int;"

    aput-object v5, v4, v3

    const-string v5, "&#8747;"

    aput-object v5, v4, v9

    const-string v5, "\u222b"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&there4;"

    aput-object v5, v4, v3

    const-string v5, "&#8756;"

    aput-object v5, v4, v9

    const-string v5, "\u2234"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sim;"

    aput-object v5, v4, v3

    const-string v5, "&#8764;"

    aput-object v5, v4, v9

    const-string v5, "\u223c"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&cong;"

    aput-object v5, v4, v3

    const-string v5, "&#8773;"

    aput-object v5, v4, v9

    const-string v5, "\u2245"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&asymp;"

    aput-object v5, v4, v3

    const-string v5, "&#8776;"

    aput-object v5, v4, v9

    const-string v5, "\u2248"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ne;"

    aput-object v5, v4, v3

    const-string v5, "&#8800;"

    aput-object v5, v4, v9

    const-string v5, "\u2260"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&equiv;"

    aput-object v5, v4, v3

    const-string v5, "&#8801;"

    aput-object v5, v4, v9

    const-string v5, "\u2261"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&le;"

    aput-object v5, v4, v3

    const-string v5, "&#8804;"

    aput-object v5, v4, v9

    const-string v5, "\u2264"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ge;"

    aput-object v5, v4, v3

    const-string v5, "&#8805;"

    aput-object v5, v4, v9

    const-string v5, "\u2265"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sub;"

    aput-object v5, v4, v3

    const-string v5, "&#8834;"

    aput-object v5, v4, v9

    const-string v5, "\u2282"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xc9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sup;"

    aput-object v5, v4, v3

    const-string v5, "&#8835;"

    aput-object v5, v4, v9

    const-string v5, "\u2283"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xca

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sube;"

    aput-object v5, v4, v3

    const-string v5, "&#8838;"

    aput-object v5, v4, v9

    const-string v5, "\u2286"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xcb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&supe;"

    aput-object v5, v4, v3

    const-string v5, "&#8839;"

    aput-object v5, v4, v9

    const-string v5, "\u2287"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xcc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&oplus;"

    aput-object v5, v4, v3

    const-string v5, "&#8853;"

    aput-object v5, v4, v9

    const-string v5, "\u2295"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xcd

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&otimes;"

    aput-object v5, v4, v3

    const-string v5, "&#8855;"

    aput-object v5, v4, v9

    const-string v5, "\u2297"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xce

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&perp;"

    aput-object v5, v4, v3

    const-string v5, "&#8869;"

    aput-object v5, v4, v9

    const-string v5, "\u22a5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xcf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sdot;"

    aput-object v5, v4, v3

    const-string v5, "&#8901;"

    aput-object v5, v4, v9

    const-string v5, "\u22c5"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lceil;"

    aput-object v5, v4, v3

    const-string v5, "&#8968;"

    aput-object v5, v4, v9

    const-string v5, "\u2308"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rceil;"

    aput-object v5, v4, v3

    const-string v5, "&#8969;"

    aput-object v5, v4, v9

    const-string v5, "\u2309"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lfloor;"

    aput-object v5, v4, v3

    const-string v5, "&#8970;"

    aput-object v5, v4, v9

    const-string v5, "\u230a"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rfloor;"

    aput-object v5, v4, v3

    const-string v5, "&#8971;"

    aput-object v5, v4, v9

    const-string v5, "\u230b"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lang;"

    aput-object v5, v4, v3

    const-string v5, "&#9001;"

    aput-object v5, v4, v9

    const-string v5, "\u2329"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rang;"

    aput-object v5, v4, v3

    const-string v5, "&#9002;"

    aput-object v5, v4, v9

    const-string v5, "\u232a"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&loz;"

    aput-object v5, v4, v3

    const-string v5, "&#9674;"

    aput-object v5, v4, v9

    const-string v5, "\u25ca"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&spades;"

    aput-object v5, v4, v3

    const-string v5, "&#9824;"

    aput-object v5, v4, v9

    const-string v5, "\u2660"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&clubs;"

    aput-object v5, v4, v3

    const-string v5, "&#9827;"

    aput-object v5, v4, v9

    const-string v5, "\u2663"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xd9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&hearts;"

    aput-object v5, v4, v3

    const-string v5, "&#9829;"

    aput-object v5, v4, v9

    const-string v5, "\u2665"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xda

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&diams;"

    aput-object v5, v4, v3

    const-string v5, "&#9830;"

    aput-object v5, v4, v9

    const-string v5, "\u2666"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xdb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&quot;"

    aput-object v5, v4, v3

    const-string v5, "&#34;"

    aput-object v5, v4, v9

    const-string v5, "\""

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xdc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&amp;"

    aput-object v5, v4, v3

    const-string v5, "&#38;"

    aput-object v5, v4, v9

    const-string v5, "&"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xdd

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lt;"

    aput-object v5, v4, v3

    const-string v5, "&#60;"

    aput-object v5, v4, v9

    const-string v5, "<"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xde

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&gt;"

    aput-object v5, v4, v3

    const-string v5, "&#62;"

    aput-object v5, v4, v9

    const-string v5, ">"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xdf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&OElig;"

    aput-object v5, v4, v3

    const-string v5, "&#338;"

    aput-object v5, v4, v9

    const-string v5, "\u0152"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&oelig;"

    aput-object v5, v4, v3

    const-string v5, "&#339;"

    aput-object v5, v4, v9

    const-string v5, "\u0153"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Scaron;"

    aput-object v5, v4, v3

    const-string v5, "&#352;"

    aput-object v5, v4, v9

    const-string v5, "\u0160"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&scaron;"

    aput-object v5, v4, v3

    const-string v5, "&#353;"

    aput-object v5, v4, v9

    const-string v5, "\u0161"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Yuml;"

    aput-object v5, v4, v3

    const-string v5, "&#376;"

    aput-object v5, v4, v9

    const-string v5, "\u0178"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&circ;"

    aput-object v5, v4, v3

    const-string v5, "&#710;"

    aput-object v5, v4, v9

    const-string v5, "\u02c6"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&tilde;"

    aput-object v5, v4, v3

    const-string v5, "&#732;"

    aput-object v5, v4, v9

    const-string v5, "\u02dc"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ensp;"

    aput-object v5, v4, v3

    const-string v5, "&#8194;"

    aput-object v5, v4, v9

    const-string v5, "\u2002"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&emsp;"

    aput-object v5, v4, v3

    const-string v5, "&#8195;"

    aput-object v5, v4, v9

    const-string v5, "\u2003"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&thinsp;"

    aput-object v5, v4, v3

    const-string v5, "&#8201;"

    aput-object v5, v4, v9

    const-string v5, "\u2009"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xe9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&zwnj;"

    aput-object v5, v4, v3

    const-string v5, "&#8204;"

    aput-object v5, v4, v9

    const-string v5, "\u200c"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xea

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&zwj;"

    aput-object v5, v4, v3

    const-string v5, "&#8205;"

    aput-object v5, v4, v9

    const-string v5, "\u200d"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xeb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lrm;"

    aput-object v5, v4, v3

    const-string v5, "&#8206;"

    aput-object v5, v4, v9

    const-string v5, "\u200e"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xec

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rlm;"

    aput-object v5, v4, v3

    const-string v5, "&#8207;"

    aput-object v5, v4, v9

    const-string v5, "\u200f"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xed

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ndash;"

    aput-object v5, v4, v3

    const-string v5, "&#8211;"

    aput-object v5, v4, v9

    const-string v5, "\u2013"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xee

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&mdash;"

    aput-object v5, v4, v3

    const-string v5, "&#8212;"

    aput-object v5, v4, v9

    const-string v5, "\u2014"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xef

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lsquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8216;"

    aput-object v5, v4, v9

    const-string v5, "\u2018"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rsquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8217;"

    aput-object v5, v4, v9

    const-string v5, "\u2019"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&sbquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8218;"

    aput-object v5, v4, v9

    const-string v5, "\u201a"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf2

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&ldquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8220;"

    aput-object v5, v4, v9

    const-string v5, "\u201c"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rdquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8221;"

    aput-object v5, v4, v9

    const-string v5, "\u201d"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&bdquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8222;"

    aput-object v5, v4, v9

    const-string v5, "\u201e"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&dagger;"

    aput-object v5, v4, v3

    const-string v5, "&#8224;"

    aput-object v5, v4, v9

    const-string v5, "\u2020"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&Dagger;"

    aput-object v5, v4, v3

    const-string v5, "&#8225;"

    aput-object v5, v4, v9

    const-string v5, "\u2021"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&permil;"

    aput-object v5, v4, v3

    const-string v5, "&#8240;"

    aput-object v5, v4, v9

    const-string v5, "\u2030"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&lsaquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8249;"

    aput-object v5, v4, v9

    const-string v5, "\u2039"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xf9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&rsaquo;"

    aput-object v5, v4, v3

    const-string v5, "&#8250;"

    aput-object v5, v4, v9

    const-string v5, "\u203a"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    const/16 v2, 0xfa

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "&euro;"

    aput-object v5, v4, v3

    const-string v5, "&#8364;"

    aput-object v5, v4, v9

    const-string v5, "\u20ac"

    aput-object v5, v4, v8

    aput-object v4, v0, v2

    .line 447
    .local v0, "entities":[[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_11b2
    if-ge v2, v4, :cond_11d4

    aget-object v1, v0, v2

    .line 448
    .local v1, "entity":[Ljava/lang/String;
    sget-object v5, Ltwitter4j/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    aget-object v6, v1, v8

    aget-object v7, v1, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v5, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v6, v1, v3

    aget-object v7, v1, v8

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v5, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v6, v1, v9

    aget-object v7, v1, v8

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_11b2

    .line 452
    .end local v1    # "entity":[Ljava/lang/String;
    :cond_11d4
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {v0}, Ltwitter4j/HTMLEntity;->escape(Ljava/lang/StringBuilder;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static escape(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p0, "original"    # Ljava/lang/StringBuilder;

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 35
    sget-object v2, Ltwitter4j/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "escaped":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 37
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 40
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    .end local v0    # "escaped":Ljava/lang/String;
    :cond_25
    return-void
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "returnValue":Ljava/lang/String;
    if-eqz p0, :cond_f

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {v0}, Ltwitter4j/HTMLEntity;->unescape(Ljava/lang/StringBuilder;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_f
    return-object v1
.end method

.method static unescape(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p0, "original"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, -0x1

    .line 56
    const/4 v2, 0x0

    .line 60
    .local v2, "index":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 61
    const-string v4, "&"

    invoke-virtual {p0, v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 62
    if-ne v5, v2, :cond_11

    .line 77
    :cond_10
    return-void

    .line 65
    :cond_11
    const-string v4, ";"

    invoke-virtual {p0, v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 66
    .local v3, "semicolonIndex":I
    if-eq v5, v3, :cond_10

    .line 67
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "escaped":Ljava/lang/String;
    sget-object v4, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "entity":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 70
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;
    .registers 20
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "userMentionEntities"    # [Ltwitter4j/UserMentionEntity;
    .param p2, "urlEntities"    # [Ltwitter4j/URLEntity;
    .param p3, "hashtagEntities"    # [Ltwitter4j/HashtagEntity;
    .param p4, "mediaEntities"    # [Ltwitter4j/MediaEntity;

    .prologue
    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, "entityIndexesLength":I
    if-nez p1, :cond_ac

    const/4 v13, 0x0

    :goto_4
    add-int/2addr v7, v13

    .line 85
    if-nez p2, :cond_b1

    const/4 v13, 0x0

    :goto_8
    add-int/2addr v7, v13

    .line 86
    if-nez p3, :cond_b6

    const/4 v13, 0x0

    :goto_c
    add-int/2addr v7, v13

    .line 87
    if-nez p4, :cond_bb

    const/4 v13, 0x0

    :goto_10
    add-int/2addr v7, v13

    .line 89
    new-array v6, v7, [Ltwitter4j/EntityIndex;

    .line 90
    .local v6, "entityIndexes":[Ltwitter4j/EntityIndex;
    const/4 v2, 0x0

    .line 91
    .local v2, "copyStartIndex":I
    if-eqz p1, :cond_23

    .line 92
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v6, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/2addr v2, v13

    .line 96
    :cond_23
    if-eqz p2, :cond_32

    .line 97
    const/4 v13, 0x0

    move-object/from16 v0, p2

    array-length v14, v0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v6, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    move-object/from16 v0, p2

    array-length v13, v0

    add-int/2addr v2, v13

    .line 101
    :cond_32
    if-eqz p3, :cond_41

    .line 102
    const/4 v13, 0x0

    move-object/from16 v0, p3

    array-length v14, v0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v6, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    move-object/from16 v0, p3

    array-length v13, v0

    add-int/2addr v2, v13

    .line 106
    :cond_41
    if-eqz p4, :cond_4c

    .line 107
    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v13, v6, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    :cond_4c
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 111
    const/4 v9, 0x1

    .line 112
    .local v9, "handlingStart":Z
    const/4 v5, 0x0

    .line 114
    .local v5, "entityIndex":I
    const/4 v3, 0x0

    .line 118
    .local v3, "delta":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .local v12, "unescaped":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v10, v13, :cond_e5

    .line 121
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 122
    .local v1, "c":C
    const/16 v13, 0x26

    if-ne v1, v13, :cond_c8

    .line 123
    const-string v13, ";"

    invoke-virtual {p0, v13, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 124
    .local v11, "semicolonIndex":I
    const/4 v13, -0x1

    if-eq v13, v11, :cond_c4

    .line 125
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {p0, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "escaped":Ljava/lang/String;
    sget-object v13, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    .local v4, "entity":Ljava/lang/String;
    if-eqz v4, :cond_c0

    .line 128
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    move v10, v11

    .line 130
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    rsub-int/lit8 v3, v13, 0x1

    .line 140
    .end local v4    # "entity":Ljava/lang/String;
    .end local v8    # "escaped":Ljava/lang/String;
    .end local v11    # "semicolonIndex":I
    :goto_8d
    array-length v13, v6

    if-ge v5, v13, :cond_a8

    .line 141
    if-eqz v9, :cond_cc

    .line 142
    aget-object v13, v6, v5

    invoke-virtual {v13}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v13

    add-int v14, v3, v10

    if-ne v13, v14, :cond_a8

    .line 143
    aget-object v13, v6, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ltwitter4j/EntityIndex;->setStart(I)V

    .line 144
    const/4 v9, 0x0

    .line 152
    :cond_a8
    :goto_a8
    const/4 v3, 0x0

    .line 120
    add-int/lit8 v10, v10, 0x1

    goto :goto_5c

    .line 84
    .end local v1    # "c":C
    .end local v2    # "copyStartIndex":I
    .end local v3    # "delta":I
    .end local v5    # "entityIndex":I
    .end local v6    # "entityIndexes":[Ltwitter4j/EntityIndex;
    .end local v9    # "handlingStart":Z
    .end local v10    # "i":I
    .end local v12    # "unescaped":Ljava/lang/StringBuilder;
    :cond_ac
    move-object/from16 v0, p1

    array-length v13, v0

    goto/16 :goto_4

    .line 85
    :cond_b1
    move-object/from16 v0, p2

    array-length v13, v0

    goto/16 :goto_8

    .line 86
    :cond_b6
    move-object/from16 v0, p3

    array-length v13, v0

    goto/16 :goto_c

    .line 87
    :cond_bb
    move-object/from16 v0, p4

    array-length v13, v0

    goto/16 :goto_10

    .line 132
    .restart local v1    # "c":C
    .restart local v2    # "copyStartIndex":I
    .restart local v3    # "delta":I
    .restart local v4    # "entity":Ljava/lang/String;
    .restart local v5    # "entityIndex":I
    .restart local v6    # "entityIndexes":[Ltwitter4j/EntityIndex;
    .restart local v8    # "escaped":Ljava/lang/String;
    .restart local v9    # "handlingStart":Z
    .restart local v10    # "i":I
    .restart local v11    # "semicolonIndex":I
    .restart local v12    # "unescaped":Ljava/lang/StringBuilder;
    :cond_c0
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 135
    .end local v4    # "entity":Ljava/lang/String;
    .end local v8    # "escaped":Ljava/lang/String;
    :cond_c4
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 138
    .end local v11    # "semicolonIndex":I
    :cond_c8
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 146
    :cond_cc
    aget-object v13, v6, v5

    invoke-virtual {v13}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v13

    add-int v14, v3, v10

    if-ne v13, v14, :cond_a8

    .line 147
    aget-object v13, v6, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ltwitter4j/EntityIndex;->setEnd(I)V

    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    const/4 v9, 0x1

    goto :goto_a8

    .line 154
    .end local v1    # "c":C
    :cond_e5
    array-length v13, v6

    if-ge v5, v13, :cond_fd

    .line 155
    aget-object v13, v6, v5

    invoke-virtual {v13}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v13, v14, :cond_fd

    .line 156
    aget-object v13, v6, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ltwitter4j/EntityIndex;->setEnd(I)V

    .line 160
    :cond_fd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method
