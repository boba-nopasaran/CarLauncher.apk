.class Lcom/txznet/comm/T3/T2$TN;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TN"
.end annotation


# instance fields
.field T:Lcom/txznet/comm/T3/T2$Tw;

.field T2:Lcom/txznet/txz/T3/T;

.field T3:Ljava/lang/String;

.field TN:Z

.field Te:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/comm/T3/T2$Te;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic Tn:Lcom/txznet/comm/T3/T2;

.field Tw:I

.field Ty:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/T3/T2$TN;->TN:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/T3/T2$TN;->Te:Ljava/util/List;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->TN()I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    new-instance v0, Lcom/txznet/comm/T3/T2$TN$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/T3/T2$TN$1;-><init>(Lcom/txznet/comm/T3/T2$TN;)V

    iput-object v0, p0, Lcom/txznet/comm/T3/T2$TN;->Ty:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    new-instance v0, Lcom/txznet/comm/T3/T2$Tw;

    invoke-direct {v0, p1, p2}, Lcom/txznet/comm/T3/T2$Tw;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T2$TN;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$TN;->T2()V

    return-void
.end method

.method private T(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "logServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApplicationInfo is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v4, "logServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target package not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "logServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTargetService encountered error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private T2()V
    .locals 5

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iget-boolean v2, v2, Lcom/txznet/comm/T3/T2;->Te:Z

    if-eqz v2, :cond_1

    const-string v2, "sss"

    const-string v3, "pbh disable send invoke: bind service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/txznet/comm/T3/T2$TN;->TN:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".service.TXZService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".startTXZService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;

    const/16 v4, 0x41

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    if-nez v2, :cond_2

    const-string v2, "logServiceManager"

    const-string v3, "bindService failed: componentName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/txznet/comm/T3/T2$TN;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "logServiceManager"

    const-string v3, "target package not exist, set flag"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/txznet/comm/T3/T2$TN;->TN:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$TN;->Ty:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$TN;->Ty:Ljava/lang/Runnable;

    iget v4, p0, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    invoke-virtual {v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public T()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    new-instance v1, Lcom/txznet/comm/T3/T2$TN$2;

    invoke-direct {v1, p0}, Lcom/txznet/comm/T3/T2$TN$2;-><init>(Lcom/txznet/comm/T3/T2$TN;)V

    invoke-virtual {v0, v1}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public T3()V
    .locals 14

    const/4 v13, 0x0

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iget-object v9, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    iget-object v10, p0, Lcom/txznet/comm/T3/T2$TN;->Te:Ljava/util/List;

    iget-boolean v11, p0, Lcom/txznet/comm/T3/T2$TN;->TN:Z

    invoke-static {v8, v9, v10, v11}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$TN;->T2()V

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Te:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Te:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/txznet/comm/T3/T2$Te;

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    if-eqz v8, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iput-object v7, v8, Lcom/txznet/comm/T3/T2;->T2:Lcom/txznet/comm/T3/T2$Te;

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iget-object v9, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    iput-object v9, v8, Lcom/txznet/comm/T3/T2;->TN:Ljava/lang/String;

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iget-object v9, p0, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    iget-object v10, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    iget-object v11, v7, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    iget-object v12, v7, Lcom/txznet/comm/T3/T2$Te;->T2:[B

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/txz/T3/T;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v6, v8

    check-cast v6, [B

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iput-object v13, v8, Lcom/txznet/comm/T3/T2;->T2:Lcom/txznet/comm/T3/T2$Te;

    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Tn:Lcom/txznet/comm/T3/T2;

    iput-object v13, v8, Lcom/txznet/comm/T3/T2;->TN:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v0

    const-wide/16 v8, 0x32

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    iget-object v8, v7, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    const-string v9, "comm.log"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "command["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] from ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] to ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] cost too much time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    :cond_2
    iget-object v8, v7, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-eqz v8, :cond_3

    :try_start_0
    iget-object v8, v7, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    new-instance v9, Lcom/txznet/comm/T3/T2$T2;

    invoke-direct {v9, v6}, Lcom/txznet/comm/T3/T2$T2;-><init>([B)V

    invoke-virtual {v8, v9}, Lcom/txznet/comm/T3/T2$T3;->T(Lcom/txznet/comm/T3/T2$T2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/txznet/comm/T3/T2$TN;->Te:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
