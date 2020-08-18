.class public Lcom/txznet/T/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field protected static T:Lcom/txznet/T/T;

.field protected static T2:Lcom/txznet/txz/util/Te;

.field protected static T3:Landroid/app/Application;

.field protected static TN:Lcom/txznet/txz/util/Te;

.field static Te:Ljava/lang/Boolean;

.field public static Tw:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/txznet/txz/util/Te;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/txz/util/Te;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/txznet/T/T;->TN:Lcom/txznet/txz/util/Te;

    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/T/T;->Te:Ljava/lang/Boolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/txznet/T/T;->Tw:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/txznet/T/T;->T3:Landroid/app/Application;

    return-object v0
.end method

.method public static T(ILjava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v4, Lcom/txznet/T/T;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ApkLoader"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fileSize"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fileSize"

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileType"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileList"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reset:input size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",files="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static T(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/txznet/T/T;->T2:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static T(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/txznet/T/T;->T2:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0, p1, p2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/txznet/T/T;->T2:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static T2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/txznet/T/T;->T:Lcom/txznet/T/T;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/T/T;->TN()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/txznet/T/T;->T:Lcom/txznet/T/T;

    invoke-virtual {v0}, Lcom/txznet/T/T;->Te()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static T3()Lcom/txznet/T/T;
    .locals 1

    sget-object v0, Lcom/txznet/T/T;->T:Lcom/txznet/T/T;

    return-object v0
.end method

.method public static T3(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/txznet/T/T;->TN:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0, p1, p2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/txznet/T/T;->TN:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static TG()V
    .locals 5

    invoke-static {}, Lcom/txznet/T/T;->Ty()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "clear start time record"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ApkLoader"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "launchTimes"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "launchTimes"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static TN()Ljava/lang/String;
    .locals 1

    const-string v0, "20170427173905_JUNEJIN-PC_29342"

    return-object v0
.end method

.method public static TR()V
    .locals 1

    const-string v0, "app exit"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/T/T;->TG()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static Tn()V
    .locals 1

    const-string v0, "app restart"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static Tw()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_0

    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static Ty()Z
    .locals 2

    sget-object v0, Lcom/txznet/T/T;->Te:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/T/T;->Tw()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/T/T;->Te:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/txznet/T/T;->Te:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/txznet/txz/T/T2;->T(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Te()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/txznet/T/T;->TN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
