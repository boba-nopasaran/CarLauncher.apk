.class final Lcom/car/launchercommon/localapp/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$container:J

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/car/launchercommon/localapp/ItemInfo;

.field final synthetic val$notify:Z

.field final synthetic val$screen:I

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/ItemInfo;JIIILandroid/content/ContentResolver;ZLandroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iput-wide p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$container:J

    iput p4, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$screen:I

    iput p5, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$cellX:I

    iput p6, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$cellY:I

    iput-object p7, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p8, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$notify:Z

    iput-object p9, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DbDebug    Add item ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-object v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to db, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v2, v2, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarL.Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$notify:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    sget-object v2, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v4, v1, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    const/4 v3, 0x0

    invoke-static {v4, v5, v1, v3}, Lcom/car/launchercommon/localapp/LauncherModel;->checkItemInfoLocked(JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v4, v3, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget v1, v1, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    sget-object v1, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v4, v1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v4, v1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$4;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
