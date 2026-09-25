.class public Lcom/facebook/internal/PendingCallStore;
.super Ljava/lang/Object;
.source "PendingCallStore.java"


# static fields
.field private static final CALL_ID_ARRAY_KEY:Ljava/lang/String; = "com.facebook.internal.PendingCallStore.callIdArrayKey"

.field private static final CALL_KEY_PREFIX:Ljava/lang/String; = "com.facebook.internal.PendingCallStore."

.field private static mInstance:Lcom/facebook/internal/PendingCallStore;


# instance fields
.field private pendingCallMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/widget/FacebookDialog$PendingCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized createInstance()V
    .registers 2

    .prologue
    .line 34
    const-class v1, Lcom/facebook/internal/PendingCallStore;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;

    if-nez v0, :cond_e

    .line 35
    new-instance v0, Lcom/facebook/internal/PendingCallStore;

    invoke-direct {v0}, Lcom/facebook/internal/PendingCallStore;-><init>()V

    sput-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 37
    :cond_e
    monitor-exit v1

    return-void

    .line 34
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/facebook/internal/PendingCallStore;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;

    if-nez v0, :cond_7

    .line 27
    invoke-static {}, Lcom/facebook/internal/PendingCallStore;->createInstance()V

    .line 30
    :cond_7
    sget-object v0, Lcom/facebook/internal/PendingCallStore;->mInstance:Lcom/facebook/internal/PendingCallStore;

    return-object v0
.end method

.method private getSavedStateKeyForPendingCallId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pendingCallId"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.facebook.internal.PendingCallStore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPendingCallById(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;
    .registers 4
    .param p1, "callId"    # Ljava/util/UUID;

    .prologue
    .line 52
    if-nez p1, :cond_4

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    goto :goto_3
.end method

.method public restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const-string v4, "com.facebook.internal.PendingCallStore.callIdArrayKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 70
    .local v1, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_32

    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "callId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/internal/PendingCallStore;->getSavedStateKeyForPendingCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "stateKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 75
    .local v2, "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    if-eqz v2, :cond_c

    .line 76
    iget-object v5, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 80
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    .end local v3    # "stateKey":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v0, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "com.facebook.internal.PendingCallStore.callIdArrayKey"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    iget-object v3, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 63
    .local v1, "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/internal/PendingCallStore;->getSavedStateKeyForPendingCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "stateKey":Ljava/lang/String;
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1a

    .line 66
    .end local v1    # "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    .end local v2    # "stateKey":Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public stopTrackingPendingCall(Ljava/util/UUID;)V
    .registers 4
    .param p1, "callId"    # Ljava/util/UUID;

    .prologue
    .line 46
    if-eqz p1, :cond_b

    .line 47
    iget-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_b
    return-void
.end method

.method public trackPendingCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    .registers 4
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;

    .prologue
    .line 40
    if-eqz p1, :cond_f

    .line 41
    iget-object v0, p0, Lcom/facebook/internal/PendingCallStore;->pendingCallMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_f
    return-void
.end method
