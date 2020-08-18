.class public Lcom/T/T/T2/TF;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/TF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/TF;

    invoke-direct {v0}, Lcom/T/T/T2/TF;-><init>()V

    sput-object v0, Lcom/T/T/T2/TF;->T:Lcom/T/T/T2/TF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v3

    if-nez p2, :cond_1

    sget-object v7, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "[]"

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    check-cast p2, [D

    move-object v0, p2

    check-cast v0, [D

    array-length v6, v0

    add-int/lit8 v1, v6, -0x1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    const-string v7, "[]"

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    goto :goto_0

    :cond_2
    const/16 v7, 0x5b

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lcom/T/T/T2/T30;->T()V

    :goto_2
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    goto :goto_2

    :cond_4
    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/T/T/T2/T30;->T()V

    :goto_3
    const/16 v7, 0x5d

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto :goto_0

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    goto :goto_3
.end method
