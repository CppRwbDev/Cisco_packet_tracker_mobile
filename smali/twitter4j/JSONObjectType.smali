.class public final Ltwitter4j/JSONObjectType;
.super Ljava/lang/Object;
.source "JSONObjectType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/JSONObjectType$Type;
    }
.end annotation


# static fields
.field private static final logger:Ltwitter4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Ltwitter4j/JSONObjectType;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/JSONObjectType;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static determine(Ltwitter4j/JSONObject;)Ltwitter4j/JSONObjectType$Type;
    .registers 6
    .param p0, "json"    # Ltwitter4j/JSONObject;

    .prologue
    .line 68
    const-string v2, "sender"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 69
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->SENDER:Ltwitter4j/JSONObjectType$Type;

    .line 128
    :goto_a
    return-object v2

    .line 70
    :cond_b
    const-string v2, "text"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 71
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->STATUS:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 72
    :cond_16
    const-string v2, "direct_message"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 73
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->DIRECT_MESSAGE:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 74
    :cond_21
    const-string v2, "delete"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 75
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->DELETE:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 76
    :cond_2c
    const-string v2, "limit"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 77
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->LIMIT:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 78
    :cond_37
    const-string v2, "warning"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 79
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->STALL_WARNING:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 80
    :cond_42
    const-string v2, "scrub_geo"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 81
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->SCRUB_GEO:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 82
    :cond_4d
    const-string v2, "friends"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 83
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->FRIENDS:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 84
    :cond_58
    const-string v2, "event"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_124

    .line 87
    :try_start_60
    const-string v2, "event"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "event":Ljava/lang/String;
    const-string v2, "favorite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 89
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->FAVORITE:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 90
    :cond_71
    const-string v2, "unfavorite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 91
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNFAVORITE:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 92
    :cond_7c
    const-string v2, "follow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 93
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->FOLLOW:Ltwitter4j/JSONObjectType$Type;

    goto :goto_a

    .line 94
    :cond_87
    const-string v2, "unfollow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 95
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNFOLLOW:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 96
    :cond_93
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 97
    const-string v2, "list_member_added"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 98
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_ADDED:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 99
    :cond_a7
    const-string v2, "list_member_removed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 100
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_DELETED:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 101
    :cond_b3
    const-string v2, "list_user_subscribed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 102
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_SUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 103
    :cond_bf
    const-string v2, "list_user_unsubscribed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 104
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 105
    :cond_cb
    const-string v2, "list_created"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 106
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_CREATED:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 107
    :cond_d7
    const-string v2, "list_updated"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 108
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UPDATED:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 109
    :cond_e3
    const-string v2, "list_destroyed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 110
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_LIST_DESTROYED:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 112
    :cond_ef
    const-string v2, "user_update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 113
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->USER_UPDATE:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 114
    :cond_fb
    const-string v2, "block"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 115
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->BLOCK:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 116
    :cond_107
    const-string v2, "unblock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 117
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNBLOCK:Ltwitter4j/JSONObjectType$Type;
    :try_end_111
    .catch Ltwitter4j/JSONException; {:try_start_60 .. :try_end_111} :catch_113

    goto/16 :goto_a

    .line 119
    .end local v0    # "event":Ljava/lang/String;
    :catch_113
    move-exception v1

    .line 121
    .local v1, "jsone":Ltwitter4j/JSONException;
    :try_start_114
    sget-object v2, Ltwitter4j/JSONObjectType;->logger:Ltwitter4j/Logger;

    const-string v3, "Failed to get event element: "

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ltwitter4j/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltwitter4j/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catch Ltwitter4j/JSONException; {:try_start_114 .. :try_end_120} :catch_130

    .line 128
    .end local v1    # "jsone":Ltwitter4j/JSONException;
    :cond_120
    :goto_120
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->UNKNOWN:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 125
    :cond_124
    const-string v2, "disconnect"

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_120

    .line 126
    sget-object v2, Ltwitter4j/JSONObjectType$Type;->DISCONNECTION:Ltwitter4j/JSONObjectType$Type;

    goto/16 :goto_a

    .line 122
    .restart local v1    # "jsone":Ltwitter4j/JSONException;
    :catch_130
    move-exception v2

    goto :goto_120
.end method
