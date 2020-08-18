.class Lcom/txznet/txz/util/recordcenter/T2$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/txz/util/recordcenter/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T"
.end annotation


# instance fields
.field T:I

.field T2:J

.field T3:Lcom/txznet/txz/util/Te;

.field TN:Lcom/txznet/txz/util/recordcenter/T/T3;

.field Te:Lcom/txznet/txz/util/recordcenter/T/T;

.field private Tw:Ljava/lang/Runnable;

.field private Ty:Ljava/lang/Runnable;


# virtual methods
.method public T([BII)I
    .locals 3

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->TN:Lcom/txznet/txz/util/recordcenter/T/T3;

    invoke-virtual {v1, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T/T3;->T([BII)I

    move-result v0

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->T3:Lcom/txznet/txz/util/Te;

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->Tw:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/txznet/txz/util/Te;->T3(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->T3:Lcom/txznet/txz/util/Te;

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->Ty:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/txznet/txz/util/Te;->T3(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->T3:Lcom/txznet/txz/util/Te;

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->Tw:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->T3:Lcom/txznet/txz/util/Te;

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->Ty:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public T(J)V
    .locals 1

    iput-wide p1, p0, Lcom/txznet/txz/util/recordcenter/T2$T;->T2:J

    return-void
.end method
