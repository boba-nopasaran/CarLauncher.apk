.class final Lcom/txznet/txz/util/recordcenter/T2$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/txz/util/recordcenter/T/T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/txz/util/recordcenter/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T([BII)I
    .locals 1

    invoke-static {p3}, Lcom/txznet/txz/util/recordcenter/T2;->T3(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-static {}, Lcom/txznet/txz/util/recordcenter/T2;->T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/txznet/txz/util/recordcenter/T2;->T3()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/txznet/txz/util/recordcenter/T2;->T2:Lcom/txznet/txz/util/recordcenter/T/TN;

    invoke-virtual {v0, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T/TN;->T([BII)V

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2;->T(I[BII)V

    goto :goto_0
.end method