.class public interface abstract Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/localapp/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindItems(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract bindPackagesUpdated()V
.end method

.method public abstract bindSearchablesChanged()V
.end method

.method public abstract finishBindingItems()V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract isAllAppsButtonRank(I)Z
.end method

.method public abstract isAllAppsVisible()Z
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method
