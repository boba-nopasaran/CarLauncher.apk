.class Lcom/txznet/comm/ui/Tw/Te$5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Te;->Tw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Tw/Te;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Te;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Te$5;->T:Lcom/txznet/comm/ui/Tw/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/T3;->Te()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/TN;->T(Lcom/txznet/comm/ui/TR/T3;)V

    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/TN;->T(Lcom/txznet/comm/ui/TR/T3/TB;)V

    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/TN;->Te()V

    return-void
.end method
