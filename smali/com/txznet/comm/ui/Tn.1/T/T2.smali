.class public Lcom/txznet/comm/ui/Tn/T/T2;
.super Lcom/txznet/comm/ui/Tn/T2;
.source "Proguard"


# static fields
.field public static TM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x1c

    const/16 v5, 0x1a

    const/16 v4, 0x1e

    const/16 v3, 0x18

    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_color1"

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_color2"

    const-string v2, "#31BBFF"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_color3"

    const-string v2, "#F8E71C"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_color4"

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "share_baseColor1"

    const-string v2, "#FFF54545"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "share_baseColor2"

    const-string v2, "#FF00CF4A"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_size1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_size2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_size3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "base_size4"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "list_indexSize1"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "weather_tmpSize1"

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "weather_tmpSize2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "weather_stateSize1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "weather_airSize1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "share_nameSize1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "share_nameSize2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "share_valueSize1"

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "share_riseSize1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "share_itemSize1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "list_introSize1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "list_pageSize1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "sim_itemSize1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "sim_itemSize2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "sim_itemSize3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "list_list_itemSize1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    const-string v1, "list_list_itemSize2"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v5, 0xf

    const/4 v4, 0x2

    const/16 v3, 0x30

    const/16 v2, 0xa

    const/16 v1, 0x38

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tn/T2;-><init>()V

    iput v5, p0, Lcom/txznet/comm/ui/Tn/T/T2;->T:I

    const/16 v0, 0x2c

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->T3:I

    const/16 v0, 0x2c

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->T2:I

    iput v1, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TN:I

    iput v1, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Te:I

    iput v4, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TW:I

    iput v4, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TJ:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TB:I

    iput v5, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TP:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Tr:I

    iput v1, p0, Lcom/txznet/comm/ui/Tn/T/T2;->T7:I

    iput v1, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TO:I

    iput v3, p0, Lcom/txznet/comm/ui/Tn/T/T2;->To:I

    iput v3, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TQ:I

    iput v1, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TL:I

    const/16 v0, 0x14c

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TH:I

    const/16 v0, 0xe6

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->T0:I

    const/16 v0, 0xbb

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Tc:I

    iput v3, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Tk:I

    iput v3, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TF:I

    iput v2, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Tt:I

    iput v2, p0, Lcom/txznet/comm/ui/Tn/T/T2;->T5:I

    iput v2, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Tu:I

    iput v2, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Tf:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->Tg:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/txznet/comm/ui/Tn/T/T2;->TY:I

    return-void
.end method

.method public static T()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/txznet/comm/ui/Tn/T/T2;->TM:Ljava/util/HashMap;

    return-object v0
.end method
