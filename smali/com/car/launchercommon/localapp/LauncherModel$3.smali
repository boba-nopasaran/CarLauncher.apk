.class final Lcom/car/launchercommon/localapp/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/car/launchercommon/localapp/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/car/launchercommon/localapp/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$itemId:J

    iput-object p6, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iput-object p7, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$itemId:J

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v4, v5, v1, v3}, Lcom/car/launchercommon/localapp/LauncherModel;->checkItemInfoLocked(JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$3;->val$itemId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v4, v0, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, v0, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :pswitch_0
    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
