.class public Lcom/T/T/T2/TA;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/TA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/TA;

    invoke-direct {v0}, Lcom/T/T/T2/TA;-><init>()V

    sput-object v0, Lcom/T/T/T2/TA;->T:Lcom/T/T/T2/TA;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    if-nez p2, :cond_2

    sget-object v3, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v3}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, ".0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v2, v0}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    sget-object v3, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v3}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
