.class final Lcom/car/launchercommon/localapp/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel;->checkItemInfo(Lcom/car/launchercommon/localapp/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lcom/car/launchercommon/localapp/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 1

    iput-wide p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$2;->val$itemId:J

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$2;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iput-object p4, p0, Lcom/car/launchercommon/localapp/LauncherModel$2;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$2;->val$itemId:J

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$2;->val$item:Lcom/car/launchercommon/localapp/ItemInfo;

    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$2;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/car/launchercommon/localapp/LauncherModel;->checkItemInfoLocked(JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
