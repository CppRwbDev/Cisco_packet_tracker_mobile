.class public final Lcom/google/android/gms/internal/nt;
.super Lcom/google/android/gms/internal/jj;

# interfaces
.implements Lcom/google/android/gms/plus/model/moments/ItemScope;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nu;

.field private static final alQ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ji$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field BL:Ljava/lang/String;

.field final BR:I

.field Tg:Ljava/lang/String;

.field adZ:D

.field aea:D

.field final alR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field alS:Lcom/google/android/gms/internal/nt;

.field alT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field alU:Lcom/google/android/gms/internal/nt;

.field alV:Ljava/lang/String;

.field alW:Ljava/lang/String;

.field alX:Ljava/lang/String;

.field alY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field alZ:I

.field amA:Ljava/lang/String;

.field amB:Ljava/lang/String;

.field amC:Ljava/lang/String;

.field amD:Lcom/google/android/gms/internal/nt;

.field amE:Ljava/lang/String;

.field amF:Ljava/lang/String;

.field amG:Ljava/lang/String;

.field amH:Lcom/google/android/gms/internal/nt;

.field amI:Ljava/lang/String;

.field amJ:Ljava/lang/String;

.field amK:Ljava/lang/String;

.field amL:Ljava/lang/String;

.field ama:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field amb:Lcom/google/android/gms/internal/nt;

.field amc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field amd:Ljava/lang/String;

.field ame:Ljava/lang/String;

.field amf:Lcom/google/android/gms/internal/nt;

.field amg:Ljava/lang/String;

.field amh:Ljava/lang/String;

.field ami:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field amj:Ljava/lang/String;

.field amk:Ljava/lang/String;

.field aml:Ljava/lang/String;

.field amm:Ljava/lang/String;

.field amn:Ljava/lang/String;

.field amo:Ljava/lang/String;

.field amp:Ljava/lang/String;

.field amq:Ljava/lang/String;

.field amr:Lcom/google/android/gms/internal/nt;

.field ams:Ljava/lang/String;

.field amt:Ljava/lang/String;

.field amu:Ljava/lang/String;

.field amv:Lcom/google/android/gms/internal/nt;

.field amw:Lcom/google/android/gms/internal/nt;

.field amx:Lcom/google/android/gms/internal/nt;

.field amy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;"
        }
    .end annotation
.end field

.field amz:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field ol:Ljava/lang/String;

.field uO:Ljava/lang/String;

.field uR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/nu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nt;->CREATOR:Lcom/google/android/gms/internal/nu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "about"

    const-string v2, "about"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "additionalName"

    const-string v2, "additionalName"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->m(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "address"

    const-string v2, "address"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "addressCountry"

    const-string v2, "addressCountry"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "addressLocality"

    const-string v2, "addressLocality"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "addressRegion"

    const-string v2, "addressRegion"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "associated_media"

    const-string v2, "associated_media"

    const/16 v3, 0x8

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "attendeeCount"

    const-string v2, "attendeeCount"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->i(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "attendees"

    const-string v2, "attendees"

    const/16 v3, 0xa

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "audio"

    const-string v2, "audio"

    const/16 v3, 0xb

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "author"

    const-string v2, "author"

    const/16 v3, 0xc

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "bestRating"

    const-string v2, "bestRating"

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "birthDate"

    const-string v2, "birthDate"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "byArtist"

    const-string v2, "byArtist"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "caption"

    const-string v2, "caption"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "contentSize"

    const-string v2, "contentSize"

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "contentUrl"

    const-string v2, "contentUrl"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "contributor"

    const-string v2, "contributor"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "dateCreated"

    const-string v2, "dateCreated"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "dateModified"

    const-string v2, "dateModified"

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "datePublished"

    const-string v2, "datePublished"

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "embedUrl"

    const-string v2, "embedUrl"

    const/16 v3, 0x19

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "endDate"

    const-string v2, "endDate"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "familyName"

    const-string v2, "familyName"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "geo"

    const-string v2, "geo"

    const/16 v3, 0x1d

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "givenName"

    const-string v2, "givenName"

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "height"

    const-string v2, "height"

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0x21

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "inAlbum"

    const-string v2, "inAlbum"

    const/16 v3, 0x22

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "latitude"

    const-string v2, "latitude"

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "location"

    const-string v2, "location"

    const/16 v3, 0x25

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "longitude"

    const-string v2, "longitude"

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/16 v3, 0x27

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "partOfTVSeries"

    const-string v2, "partOfTVSeries"

    const/16 v3, 0x28

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "performers"

    const-string v2, "performers"

    const/16 v3, 0x29

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "playerType"

    const-string v2, "playerType"

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "postOfficeBoxNumber"

    const-string v2, "postOfficeBoxNumber"

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "postalCode"

    const-string v2, "postalCode"

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "ratingValue"

    const-string v2, "ratingValue"

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "reviewRating"

    const-string v2, "reviewRating"

    const/16 v3, 0x2e

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "startDate"

    const-string v2, "startDate"

    const/16 v3, 0x2f

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "streetAddress"

    const-string v2, "streetAddress"

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    const/16 v3, 0x31

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    const/16 v3, 0x32

    const-class v4, Lcom/google/android/gms/internal/nt;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ji$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "thumbnailUrl"

    const-string v2, "thumbnailUrl"

    const/16 v3, 0x33

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "tickerSymbol"

    const-string v2, "tickerSymbol"

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/16 v3, 0x35

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x36

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "width"

    const-string v2, "width"

    const/16 v3, 0x37

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    const-string v1, "worstRating"

    const-string v2, "worstRating"

    const/16 v3, 0x38

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ji$a;->l(Ljava/lang/String;I)Lcom/google/android/gms/internal/ji$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/nt;->BR:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/internal/nt;Ljava/util/List;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/internal/nt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;DLcom/google/android/gms/internal/nt;DLjava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "D",
            "Lcom/google/android/gms/internal/nt;",
            "D",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/nt;->BR:I

    iput-object p3, p0, Lcom/google/android/gms/internal/nt;->alS:Lcom/google/android/gms/internal/nt;

    iput-object p4, p0, Lcom/google/android/gms/internal/nt;->alT:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/nt;->alU:Lcom/google/android/gms/internal/nt;

    iput-object p6, p0, Lcom/google/android/gms/internal/nt;->alV:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/nt;->alW:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/nt;->alX:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/nt;->alY:Ljava/util/List;

    iput p10, p0, Lcom/google/android/gms/internal/nt;->alZ:I

    iput-object p11, p0, Lcom/google/android/gms/internal/nt;->ama:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/internal/nt;->amb:Lcom/google/android/gms/internal/nt;

    iput-object p13, p0, Lcom/google/android/gms/internal/nt;->amc:Ljava/util/List;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amd:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ame:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amf:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amg:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amh:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ol:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ami:Ljava/util/List;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amj:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amk:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->aml:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->Tg:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amm:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amn:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amo:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amp:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amq:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amr:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ams:Ljava/lang/String;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amt:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->BL:Ljava/lang/String;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amu:Ljava/lang/String;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amv:Lcom/google/android/gms/internal/nt;

    move-wide/from16 v0, p36

    iput-wide v0, p0, Lcom/google/android/gms/internal/nt;->adZ:D

    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amw:Lcom/google/android/gms/internal/nt;

    move-wide/from16 v0, p39

    iput-wide v0, p0, Lcom/google/android/gms/internal/nt;->aea:D

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->mName:Ljava/lang/String;

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amx:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amy:Ljava/util/List;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amz:Ljava/lang/String;

    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amA:Ljava/lang/String;

    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amB:Ljava/lang/String;

    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amC:Ljava/lang/String;

    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amD:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amE:Ljava/lang/String;

    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amF:Ljava/lang/String;

    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amG:Ljava/lang/String;

    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amH:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amI:Ljava/lang/String;

    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amJ:Ljava/lang/String;

    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->uO:Ljava/lang/String;

    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->uR:Ljava/lang/String;

    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amK:Ljava/lang/String;

    move-object/from16 v0, p58

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/nt;Ljava/util/List;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/internal/nt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;DLcom/google/android/gms/internal/nt;DLjava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/nt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "D",
            "Lcom/google/android/gms/internal/nt;",
            "D",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/jj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/nt;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/internal/nt;->alS:Lcom/google/android/gms/internal/nt;

    iput-object p3, p0, Lcom/google/android/gms/internal/nt;->alT:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/nt;->alU:Lcom/google/android/gms/internal/nt;

    iput-object p5, p0, Lcom/google/android/gms/internal/nt;->alV:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/nt;->alW:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/nt;->alX:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/nt;->alY:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/internal/nt;->alZ:I

    iput-object p10, p0, Lcom/google/android/gms/internal/nt;->ama:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/internal/nt;->amb:Lcom/google/android/gms/internal/nt;

    iput-object p12, p0, Lcom/google/android/gms/internal/nt;->amc:Ljava/util/List;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amd:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ame:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amf:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amg:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amh:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ol:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ami:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amj:Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amk:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->aml:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->Tg:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amm:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amn:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amo:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amp:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amq:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amr:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->ams:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amt:Ljava/lang/String;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->BL:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amu:Ljava/lang/String;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amv:Lcom/google/android/gms/internal/nt;

    move-wide/from16 v0, p35

    iput-wide v0, p0, Lcom/google/android/gms/internal/nt;->adZ:D

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amw:Lcom/google/android/gms/internal/nt;

    move-wide/from16 v0, p38

    iput-wide v0, p0, Lcom/google/android/gms/internal/nt;->aea:D

    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->mName:Ljava/lang/String;

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amx:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amy:Ljava/util/List;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amz:Ljava/lang/String;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amA:Ljava/lang/String;

    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amB:Ljava/lang/String;

    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amC:Ljava/lang/String;

    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amD:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amE:Ljava/lang/String;

    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amF:Ljava/lang/String;

    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amG:Ljava/lang/String;

    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amH:Lcom/google/android/gms/internal/nt;

    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amI:Ljava/lang/String;

    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amJ:Ljava/lang/String;

    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->uO:Ljava/lang/String;

    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->uR:Ljava/lang/String;

    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amK:Ljava/lang/String;

    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/google/android/gms/internal/nt;->amL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/ji$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ji$a;->hm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/ji$a;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ji$a;->hm()I

    move-result v0

    packed-switch v0, :pswitch_data_e2

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ji$a;->hm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alS:Lcom/google/android/gms/internal/nt;

    :goto_26
    return-object v0

    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alT:Ljava/util/List;

    goto :goto_26

    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alU:Lcom/google/android/gms/internal/nt;

    goto :goto_26

    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alV:Ljava/lang/String;

    goto :goto_26

    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alW:Ljava/lang/String;

    goto :goto_26

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alX:Ljava/lang/String;

    goto :goto_26

    :pswitch_36
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alY:Ljava/util/List;

    goto :goto_26

    :pswitch_39
    iget v0, p0, Lcom/google/android/gms/internal/nt;->alZ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_26

    :pswitch_40
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ama:Ljava/util/List;

    goto :goto_26

    :pswitch_43
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amb:Lcom/google/android/gms/internal/nt;

    goto :goto_26

    :pswitch_46
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amc:Ljava/util/List;

    goto :goto_26

    :pswitch_49
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amd:Ljava/lang/String;

    goto :goto_26

    :pswitch_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ame:Ljava/lang/String;

    goto :goto_26

    :pswitch_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amf:Lcom/google/android/gms/internal/nt;

    goto :goto_26

    :pswitch_52
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amg:Ljava/lang/String;

    goto :goto_26

    :pswitch_55
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amh:Ljava/lang/String;

    goto :goto_26

    :pswitch_58
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ol:Ljava/lang/String;

    goto :goto_26

    :pswitch_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ami:Ljava/util/List;

    goto :goto_26

    :pswitch_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amj:Ljava/lang/String;

    goto :goto_26

    :pswitch_61
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amk:Ljava/lang/String;

    goto :goto_26

    :pswitch_64
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->aml:Ljava/lang/String;

    goto :goto_26

    :pswitch_67
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->Tg:Ljava/lang/String;

    goto :goto_26

    :pswitch_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amm:Ljava/lang/String;

    goto :goto_26

    :pswitch_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amn:Ljava/lang/String;

    goto :goto_26

    :pswitch_70
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amo:Ljava/lang/String;

    goto :goto_26

    :pswitch_73
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amp:Ljava/lang/String;

    goto :goto_26

    :pswitch_76
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amq:Ljava/lang/String;

    goto :goto_26

    :pswitch_79
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amr:Lcom/google/android/gms/internal/nt;

    goto :goto_26

    :pswitch_7c
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ams:Ljava/lang/String;

    goto :goto_26

    :pswitch_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amt:Ljava/lang/String;

    goto :goto_26

    :pswitch_82
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->BL:Ljava/lang/String;

    goto :goto_26

    :pswitch_85
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amu:Ljava/lang/String;

    goto :goto_26

    :pswitch_88
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amv:Lcom/google/android/gms/internal/nt;

    goto :goto_26

    :pswitch_8b
    iget-wide v0, p0, Lcom/google/android/gms/internal/nt;->adZ:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_26

    :pswitch_92
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amw:Lcom/google/android/gms/internal/nt;

    goto :goto_26

    :pswitch_95
    iget-wide v0, p0, Lcom/google/android/gms/internal/nt;->aea:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_26

    :pswitch_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->mName:Ljava/lang/String;

    goto :goto_26

    :pswitch_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amx:Lcom/google/android/gms/internal/nt;

    goto :goto_26

    :pswitch_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amy:Ljava/util/List;

    goto :goto_26

    :pswitch_a5
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amz:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_a9
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amA:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_ad
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amB:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_b1
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amC:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_b5
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amD:Lcom/google/android/gms/internal/nt;

    goto/16 :goto_26

    :pswitch_b9
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amE:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amF:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_c1
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amG:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_c5
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amH:Lcom/google/android/gms/internal/nt;

    goto/16 :goto_26

    :pswitch_c9
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amI:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_cd
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amJ:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_d1
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->uO:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_d5
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->uR:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_d9
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amK:Ljava/lang/String;

    goto/16 :goto_26

    :pswitch_dd
    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amL:Ljava/lang/String;

    goto/16 :goto_26

    nop

    :pswitch_data_e2
    .packed-switch 0x2
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_85
        :pswitch_88
        :pswitch_7
        :pswitch_8b
        :pswitch_92
        :pswitch_95
        :pswitch_9c
        :pswitch_9f
        :pswitch_a2
        :pswitch_a5
        :pswitch_a9
        :pswitch_ad
        :pswitch_b1
        :pswitch_b5
        :pswitch_b9
        :pswitch_bd
        :pswitch_c1
        :pswitch_c5
        :pswitch_c9
        :pswitch_cd
        :pswitch_d1
        :pswitch_d5
        :pswitch_d9
        :pswitch_dd
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/nt;->CREATOR:Lcom/google/android/gms/internal/nu;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/nt;

    if-nez v0, :cond_8

    move v0, v1

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_7
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    if-ne p0, p1, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    check-cast p1, Lcom/google/android/gms/internal/nt;

    .end local p1    # "obj":Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nt;->a(Lcom/google/android/gms/internal/ji$a;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/nt;->a(Lcom/google/android/gms/internal/ji$a;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nt;->b(Lcom/google/android/gms/internal/ji$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/nt;->b(Lcom/google/android/gms/internal/ji$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_40
    move v0, v1

    goto :goto_7

    :cond_42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/nt;->a(Lcom/google/android/gms/internal/ji$a;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_4a
    move v0, v2

    goto :goto_7
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nt;->np()Lcom/google/android/gms/internal/nt;

    move-result-object v0

    return-object v0
.end method

.method public getAbout()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alS:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getAdditionalName()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alT:Ljava/util/List;

    return-object v0
.end method

.method public getAddress()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alU:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getAddressCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alV:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLocality()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alW:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressRegion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alX:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociated_media()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alY:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAttendeeCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/nt;->alZ:I

    return v0
.end method

.method public getAttendees()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ama:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAudio()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amb:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getAuthor()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amc:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBestRating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amd:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ame:Ljava/lang/String;

    return-object v0
.end method

.method public getByArtist()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amf:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amg:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amh:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ol:Ljava/lang/String;

    return-object v0
.end method

.method public getContributor()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ami:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amj:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amk:Ljava/lang/String;

    return-object v0
.end method

.method public getDatePublished()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->aml:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->Tg:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amm:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbedUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amn:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amo:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amp:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amq:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amr:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->ams:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->BL:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amu:Ljava/lang/String;

    return-object v0
.end method

.method public getInAlbum()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amv:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/nt;->adZ:D

    return-wide v0
.end method

.method public getLocation()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amw:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/nt;->aea:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartOfTVSeries()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amx:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getPerformers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amy:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amz:Ljava/lang/String;

    return-object v0
.end method

.method public getPostOfficeBoxNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amA:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amB:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amC:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewRating()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amD:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amE:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amF:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amG:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amH:Lcom/google/android/gms/internal/nt;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amI:Ljava/lang/String;

    return-object v0
.end method

.method public getTickerSymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amJ:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->uO:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->uR:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amK:Ljava/lang/String;

    return-object v0
.end method

.method public getWorstRating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->amL:Ljava/lang/String;

    return-object v0
.end method

.method public hasAbout()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAdditionalName()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddress()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddressCountry()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddressLocality()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddressRegion()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAssociated_media()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAttendeeCount()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAttendees()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAudio()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAuthor()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBestRating()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBirthDate()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasByArtist()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCaption()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasContentSize()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasContentUrl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasContributor()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDateCreated()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDateModified()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDatePublished()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDuration()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasEmbedUrl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasEndDate()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasFamilyName()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGeo()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHeight()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasInAlbum()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLatitude()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLocation()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLongitude()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPartOfTVSeries()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPerformers()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlayerType()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPostOfficeBoxNumber()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPostalCode()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasRatingValue()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasReviewRating()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStartDate()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStreetAddress()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasThumbnail()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasThumbnailUrl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTickerSymbol()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasWidth()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasWorstRating()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nt;->alR:Ljava/util/Set;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nt;->a(Lcom/google/android/gms/internal/ji$a;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ji$a;->hm()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nt;->b(Lcom/google/android/gms/internal/ji$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2c
    move v1, v0

    goto :goto_c

    :cond_2e
    return v1

    :cond_2f
    move v0, v1

    goto :goto_2c
.end method

.method public hf()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ji$a",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/nt;->alQ:Ljava/util/HashMap;

    return-object v0
.end method

.method public isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public np()Lcom/google/android/gms/internal/nt;
    .registers 1

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/nt;->CREATOR:Lcom/google/android/gms/internal/nu;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nu;->a(Lcom/google/android/gms/internal/nt;Landroid/os/Parcel;I)V

    return-void
.end method
