.class Lcom/car/launchercommon/localapp/ShortcutInfo;
.super Lcom/car/launchercommon/localapp/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field usingFallbackIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/ItemInfo;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Lcom/car/launchercommon/localapp/ApplicationInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/ItemInfo;-><init>(Lcom/car/launchercommon/localapp/ItemInfo;)V

    iget-object v0, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    return-void
.end method

.method public constructor <init>(Lcom/car/launchercommon/localapp/ShortcutInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/ItemInfo;-><init>(Lcom/car/launchercommon/localapp/ItemInfo;)V

    iget-object v0, p1, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-boolean v0, p1, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ShortcutInfo;",
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

    check-cast v1, Lcom/car/launchercommon/localapp/ShortcutInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/car/launchercommon/localapp/IconCache;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/localapp/ShortcutInfo;->updateIcon(Lcom/car/launchercommon/localapp/IconCache;)V

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/car/launchercommon/localapp/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    iget-object v3, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "title"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    if-eqz v2, :cond_3

    const-string v2, "iconType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/car/launchercommon/localapp/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/car/launchercommon/localapp/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    :cond_4
    const-string v2, "iconType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    const-string v2, "iconPackage"

    iget-object v3, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->itemType:I

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIcon(Lcom/car/launchercommon/localapp/IconCache;)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/car/launchercommon/localapp/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/car/launchercommon/localapp/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    return-void
.end method
