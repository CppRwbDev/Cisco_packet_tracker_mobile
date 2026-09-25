.class public Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
.super Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
.source "BoxGroupMembershipRequestObject.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 12
    return-void
.end method

.method public static addMembershipRequestObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
    .registers 5
    .param p0, "groupId"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;-><init>()V

    .line 26
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;->setGroup(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;->setUser(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;->setRole(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;

    move-result-object v1

    return-object v1
.end method

.method public static updateMembershipRequestObject(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
    .registers 3
    .param p0, "role"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;-><init>()V

    .line 31
    .local v0, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
    invoke-virtual {v0, p0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;->setRole(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public setGroup(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
    .registers 4
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 36
    .local v0, "groupEntity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "group"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
    .registers 3
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "role"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;

    invoke-direct {v0}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;-><init>()V

    .line 52
    .local v0, "userEntity":Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/box/boxjavalibv2/jsonentities/MapJSONStringEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "user"

    invoke-virtual {p0, v1, v0}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxGroupMembershipRequestObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object p0
.end method
