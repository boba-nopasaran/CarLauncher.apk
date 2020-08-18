.class public Lcom/T/T/T2/Tt;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/Tt;


# instance fields
.field private T3:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/Tt;

    invoke-direct {v0}, Lcom/T/T/T2/Tt;-><init>()V

    sput-object v0, Lcom/T/T/T2/Tt;->T:Lcom/T/T/T2/Tt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/T/T/T2/Tt;->T3:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v1

    if-nez p2, :cond_2

    sget-object v4, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v4}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Lcom/T/T/T2/T30;->T(C)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/T/T/T2/Tt;->T3:Ljava/text/DecimalFormat;

    if-nez v4, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v4, ".0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-virtual {v1, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    sget-object v4, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v4}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x44

    invoke-virtual {v1, v4}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/T/T/T2/Tt;->T3:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
