.class Lcom/txznet/comm/T3/T2$6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/T3/T2$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T2:Ljava/lang/Runnable;

.field final synthetic T3:Lcom/txznet/comm/T3/T2$T3;

.field final synthetic TN:Lcom/txznet/comm/T3/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/T3/T2$6;->TN:Lcom/txznet/comm/T3/T2;

    iput-object p2, p0, Lcom/txznet/comm/T3/T2$6;->T:Ljava/lang/String;

    iput-object p3, p0, Lcom/txznet/comm/T3/T2$6;->T3:Lcom/txznet/comm/T3/T2$T3;

    iput-object p4, p0, Lcom/txznet/comm/T3/T2$6;->T2:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/txznet/comm/T3/T2$6;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$6;->T:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/txznet/comm/T3/T2$6;->T3:Lcom/txznet/comm/T3/T2$T3;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    return-void
.end method

.method public T3(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/txznet/comm/T3/T2$6;->T:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/T3/T2$6;->TN:Lcom/txznet/comm/T3/T2;

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$6;->T2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/txznet/comm/T3/T2$6;->TN:Lcom/txznet/comm/T3/T2;

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$6;->T2:Ljava/lang/Runnable;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method
