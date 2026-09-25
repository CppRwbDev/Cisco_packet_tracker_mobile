.class Lcom/facebook/internal/LikeActionController$5;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController;->getFacebookDialogCallback(Landroid/os/Bundle;)Lcom/facebook/widget/FacebookDialog$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/internal/LikeActionController;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 686
    if-eqz p2, :cond_a

    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 723
    :cond_a
    :goto_a
    return-void

    .line 691
    :cond_b
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 694
    .local v1, "isObjectLiked":Z
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$800(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "likeCountStringWithLike":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "likeCountStringWithoutLike":Ljava/lang/String;
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 697
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    move-object v3, v2

    .line 701
    :cond_2c
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1000(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, "socialSentenceWithLike":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1100(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, "socialSentenceWithoutWithoutLike":Ljava/lang/String;
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 704
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 705
    move-object v5, v4

    .line 708
    :cond_47
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "unlike_token"

    .line 709
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 712
    .local v6, "unlikeToken":Ljava/lang/String;
    :goto_55
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_84

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 713
    .local v7, "logParams":Landroid/os/Bundle;
    :goto_5e
    const-string v0, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1300(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    const-string v8, "fb_like_control_dialog_did_succeed"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v7}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 716
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static/range {v0 .. v6}, Lcom/facebook/internal/LikeActionController;->access$1400(Lcom/facebook/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 709
    .end local v6    # "unlikeToken":Ljava/lang/String;
    .end local v7    # "logParams":Landroid/os/Bundle;
    :cond_7d
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    .line 710
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1200(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v6

    goto :goto_55

    .line 712
    .restart local v6    # "unlikeToken":Ljava/lang/String;
    :cond_84
    iget-object v7, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_5e
.end method

.method public onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 727
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Like Dialog failed with error : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v1, :cond_3c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, "logParams":Landroid/os/Bundle;
    :goto_1a
    const-string v1, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v2, "present_dialog"

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/LikeActionController;->access$1600(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 735
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/internal/LikeActionController;->access$1700(Lcom/facebook/internal/LikeActionController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v3, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v3, p3}, Lcom/facebook/internal/LikeActionController;->access$1800(Landroid/content/Context;Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 736
    return-void

    .line 729
    .end local v0    # "logParams":Landroid/os/Bundle;
    :cond_3c
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_1a
.end method
