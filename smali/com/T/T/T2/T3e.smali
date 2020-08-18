.class public Lcom/T/T/T2/T3e;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T3e;

    invoke-direct {v0}, Lcom/T/T/T2/T3e;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3e;->T:Lcom/T/T/T2/T3e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    move-result-object v0

    if-nez p2, :cond_2

    sget-object v1, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(C)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/T/T/T2/T30;->T(J)V

    sget-object v1, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const-wide/32 v4, -0x80000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const-class v1, Ljava/lang/Long;

    if-eq p4, v1, :cond_0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
