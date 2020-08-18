.class public Lcom/T/T/T2/T3N;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3N;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T3N;

    invoke-direct {v0}, Lcom/T/T/T2/T3N;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3N;->T:Lcom/T/T/T2/T3N;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    if-nez p2, :cond_1

    sget-object v3, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    check-cast p2, [J

    move-object v0, p2

    check-cast v0, [J

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    if-eqz v1, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    :cond_2
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Lcom/T/T/T2/T30;->T(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
