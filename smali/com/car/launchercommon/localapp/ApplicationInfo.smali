.class public Lcom/car/launchercommon/localapp/ApplicationInfo;
.super Lcom/car/launchercommon/localapp/ItemInfo;
.source "ApplicationInfo.java"


# static fields
.field static final DOWNLOADED_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarL.Launcher2.ApplicationInfo"

.field static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field firstInstallTime:J

.field flags:I

.field public iconBitmap:Landroid/graphics/Bitmap;

.field public intent:Landroid/content/Intent;

.field xTitle:I

.field yTitle:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/ItemInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/car/launchercommon/localapp/IconCache;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Lcom/car/launchercommon/localapp/IconCache;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/ItemInfo;-><init>()V

    iput v3, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->container:J

    iget-object v3, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v4, 0x10200000

    invoke-virtual {p0, v3, v4}, Lcom/car/launchercommon/localapp/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    iget v3, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v4, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v4, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p3, p0, p2, p4}, Lcom/car/launchercommon/localapp/IconCache;->getTitleAndIcon(Lcom/car/launchercommon/localapp/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    return-void

    :catch_0
    move-exception v1

    const-string v3, "CarL.Launcher2.ApplicationInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager.getApplicationInfo failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/car/launchercommon/localapp/ApplicationInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/ItemInfo;-><init>(Lcom/car/launchercommon/localapp/ItemInfo;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    iget-object v0, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    iget v0, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->flags:I

    iget-wide v0, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->firstInstallTime:J

    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/ApplicationInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/car/launchercommon/localapp/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/car/launchercommon/localapp/ApplicationInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeShortcut()Lcom/car/launchercommon/localapp/ShortcutInfo;
    .locals 1

    new-instance v0, Lcom/car/launchercommon/localapp/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/localapp/ShortcutInfo;-><init>(Lcom/car/launchercommon/localapp/ApplicationInfo;)V

    return-object v0
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->itemType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
