.class Lcom/txznet/txz/util/Te$1;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/txz/util/Te;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/txz/util/Te;


# direct methods
.method constructor <init>(Lcom/txznet/txz/util/Te;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/txz/util/Te$1;->T:Lcom/txznet/txz/util/Te;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/txznet/txz/util/Te$1;->T:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0}, Lcom/txznet/txz/util/Te;->T()V

    iget-object v0, p0, Lcom/txznet/txz/util/Te$1;->T:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p1}, Lcom/txznet/txz/util/Te;->T(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/txznet/txz/util/Te$1;->T:Lcom/txznet/txz/util/Te;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/txznet/txz/util/Te;->Ty:J

    return-void
.end method
