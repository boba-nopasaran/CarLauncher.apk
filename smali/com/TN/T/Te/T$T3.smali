.class public final Lcom/TN/T/Te/T$T3;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Te/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T3"
.end annotation


# instance fields
.field public T2:Ljava/lang/Double;

.field public T3:Ljava/lang/Integer;

.field public TG:Ljava/lang/Integer;

.field public TN:Ljava/lang/Double;

.field public Te:Ljava/lang/Float;

.field public Tn:Ljava/lang/Float;

.field public Tw:Ljava/lang/Float;

.field public Ty:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    invoke-virtual {p0}, Lcom/TN/T/Te/T$T3;->TN()Lcom/TN/T/Te/T$T3;

    return-void
.end method


# virtual methods
.method public synthetic T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/TN/T/Te/T$T3;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T3;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_0
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/T3/T/T/T3;->T(ID)V

    :cond_1
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/T3/T/T/T3;->T(ID)V

    :cond_2
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(IF)V

    :cond_3
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(IF)V

    :cond_4
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/T3/T/T/T3;->T(ID)V

    :cond_5
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(IF)V

    :cond_6
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_7
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    return-void
.end method

.method protected T2()I
    .locals 4

    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/T3/T/T/T3;->T3(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/T3/T/T/T3;->T3(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/T3/T/T/T3;->T3(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T3;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T2()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T2()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TN()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TN()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T2()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TN()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x31 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Te/T$T3;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Te/T$T3;->T:I

    return-object p0
.end method
