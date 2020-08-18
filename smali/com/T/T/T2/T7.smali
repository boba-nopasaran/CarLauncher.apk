.class public Lcom/T/T/T2/T7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T7;

    invoke-direct {v0}, Lcom/T/T/T2/T7;-><init>()V

    sput-object v0, Lcom/T/T/T2/T7;->T:Lcom/T/T/T2/T7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_2

    sget-object v3, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(C)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->T3(I)V

    sget-object v3, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v3}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
