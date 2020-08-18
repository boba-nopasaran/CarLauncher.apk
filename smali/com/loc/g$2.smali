.class final Lcom/loc/g$2;
.super Ljava/lang/Object;
.source "GPSLocation.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/loc/g;


# direct methods
.method constructor <init>(Lcom/loc/g;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/g$2;->a:Lcom/loc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/loc/g$2;->a:Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/g$2;->a:Lcom/loc/g;

    iget-object v1, v1, Lcom/loc/g;->c:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/g$2;->a:Lcom/loc/g;

    iget-object v2, v2, Lcom/loc/g;->j:Landroid/location/GpsStatus;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/g;->j:Landroid/location/GpsStatus;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/g$2;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->j:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/g$2;->a:Lcom/loc/g;

    iget-object v1, v1, Lcom/loc/g;->j:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v3

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge v1, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/loc/g$2;->a:Lcom/loc/g;

    iput v1, v0, Lcom/loc/g;->i:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
