.class Lcom/car/launchercommon/localapp/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/car/launchercommon/localapp/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/car/launchercommon/localapp/IconCache;)V
    .locals 2

    const/16 v1, 0x2a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->modified:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/localapp/ApplicationInfo;

    iget-object v3, v2, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/car/launchercommon/localapp/ApplicationInfo;
    .locals 4

    iget-object v3, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/localapp/ApplicationInfo;

    iget-object v3, v2, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/car/launchercommon/localapp/ApplicationInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/car/launchercommon/localapp/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1, p2}, Lcom/car/launchercommon/localapp/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v3, Lcom/car/launchercommon/localapp/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/car/launchercommon/localapp/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/car/launchercommon/localapp/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {p0, v3}, Lcom/car/launchercommon/localapp/AllAppsList;->add(Lcom/car/launchercommon/localapp/ApplicationInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public get(I)Lcom/car/launchercommon/localapp/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/ApplicationInfo;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/launchercommon/localapp/ApplicationInfo;

    iget-object v4, v3, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v4}, Lcom/car/launchercommon/localapp/IconCache;->flush()V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {p1, p2}, Lcom/car/launchercommon/localapp/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_0
    if-ltz v3, :cond_1

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/ApplicationInfo;

    iget-object v6, v0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, v1}, Lcom/car/launchercommon/localapp/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v6, v1}, Lcom/car/launchercommon/localapp/IconCache;->remove(Landroid/content/ComponentName;)V

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/car/launchercommon/localapp/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/car/launchercommon/localapp/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v6, Lcom/car/launchercommon/localapp/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-direct {v6, v7, v4, v8, v9}, Lcom/car/launchercommon/localapp/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/car/launchercommon/localapp/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/localapp/AllAppsList;->add(Lcom/car/launchercommon/localapp/ApplicationInfo;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    iget-object v7, v0, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/car/launchercommon/localapp/IconCache;->remove(Landroid/content/ComponentName;)V

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v6, v0, v4, v9}, Lcom/car/launchercommon/localapp/IconCache;->getTitleAndIcon(Lcom/car/launchercommon/localapp/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_3
    if-ltz v3, :cond_5

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/ApplicationInfo;

    iget-object v6, v0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v6, v1}, Lcom/car/launchercommon/localapp/IconCache;->remove(Landroid/content/ComponentName;)V

    iget-object v6, p0, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    return-void
.end method
