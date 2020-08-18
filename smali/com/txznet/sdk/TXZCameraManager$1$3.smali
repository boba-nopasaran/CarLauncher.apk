.class Lcom/txznet/sdk/TXZCameraManager$1$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZCameraManager$CaptureVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZCameraManager$1;->T(Ljava/lang/String;Ljava/lang/String;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:J

.field final synthetic T3:Lcom/txznet/sdk/TXZCameraManager$1;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZCameraManager$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZCameraManager$1$3;->T3:Lcom/txznet/sdk/TXZCameraManager$1;

    iput-wide p2, p0, Lcom/txznet/sdk/TXZCameraManager$1$3;->T:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 7

    const/16 v0, 0x1bbd

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1bc1

    if-le p1, v0, :cond_1

    :cond_0
    const/16 p1, 0x1bbd

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager$1$3;->T3:Lcom/txznet/sdk/TXZCameraManager$1;

    iget-object v1, v0, Lcom/txznet/sdk/TXZCameraManager$1;->T:Lcom/txznet/sdk/TXZCameraManager;

    iget-wide v2, p0, Lcom/txznet/sdk/TXZCameraManager$1$3;->T:J

    const/4 v4, 0x2

    move v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/txznet/sdk/TXZCameraManager;->T(Lcom/txznet/sdk/TXZCameraManager;JIILjava/lang/String;)V

    return-void
.end method

.method public onSave(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager$1$3;->T3:Lcom/txznet/sdk/TXZCameraManager$1;

    iget-object v1, v0, Lcom/txznet/sdk/TXZCameraManager$1;->T:Lcom/txznet/sdk/TXZCameraManager;

    iget-wide v2, p0, Lcom/txznet/sdk/TXZCameraManager$1$3;->T:J

    const/4 v4, 0x2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/txznet/sdk/TXZCameraManager;->T(Lcom/txznet/sdk/TXZCameraManager;JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
