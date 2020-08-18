.class public final Lcom/car/launchercommon/CustomUI$Item;
.super Ljava/lang/Object;
.source "CustomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/CustomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field public backgroudImage:Ljava/lang/String;

.field public foregroundImage:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public textColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/launchercommon/CustomUI$Item;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/launchercommon/CustomUI$Item;->backgroudImage:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/launchercommon/CustomUI$Item;->foregroundImage:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/launchercommon/CustomUI$Item;->textColor:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getBackgroudStateListDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/CustomUI$Item;->backgroudImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/CustomUI$Item;->backgroudImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/launchercommon/CustomUI;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/CustomUI$Item;->backgroudImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/launchercommon/Util;->getStateListDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/CustomUI$Item;->foregroundImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/CustomUI$Item;->foregroundImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/launchercommon/CustomUI;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/CustomUI$Item;->foregroundImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/launchercommon/Util;->getDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
