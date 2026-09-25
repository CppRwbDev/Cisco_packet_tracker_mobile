.class public interface abstract Lorg/kde/necessitas/ministro/IMinistro;
.super Ljava/lang/Object;
.source "IMinistro.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kde/necessitas/ministro/IMinistro$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestLoader(Lorg/kde/necessitas/ministro/IMinistroCallback;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
