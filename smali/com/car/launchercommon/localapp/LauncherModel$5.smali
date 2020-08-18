.class final Lcom/car/launchercommon/localapp/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/car/launchercommon/localapp/ItemInfo;

.field final synthetic val$uriToDelete:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/ItemInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$uriToDelete:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DbDebug    Delete item ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-object v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from db, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarL.Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$uriToDelete:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget v1, v1, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v4, v3, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :pswitch_0
    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$5;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
