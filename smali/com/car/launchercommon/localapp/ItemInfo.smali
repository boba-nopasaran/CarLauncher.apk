.class public Lcom/car/launchercommon/localapp/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field backColor:I

.field cellX:I

.field cellY:I

.field container:J

.field dropPos:[I

.field id:J

.field itemType:I

.field minSpanX:I

.field minSpanY:I

.field requiresDbUpdate:Z

.field screen:I

.field spanX:I

.field spanY:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    iput-wide v2, p0, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    iput v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    iput v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iput v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->minSpanY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->requiresDbUpdate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->dropPos:[I

    return-void
.end method

.method constructor <init>(Lcom/car/launchercommon/localapp/ItemInfo;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    iput-wide v2, p0, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    iput v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    iput v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iput v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->minSpanY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->requiresDbUpdate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->dropPos:[I

    iget-wide v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    iget v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iget v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iget v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    iget v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    iget v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    iget v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    iput v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    iget-wide v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-static {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->checkItemInfo(Lcom/car/launchercommon/localapp/ItemInfo;)V

    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/car/launchercommon/localapp/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4

    const-string v0, "itemType"

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "container"

    iget-wide v2, p0, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "screen"

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellX"

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/ItemInfo;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    return-void
.end method

.method updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 2

    const-string v0, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
