.class public Lcom/T/T/T2/T6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T6;

    invoke-direct {v0}, Lcom/T/T/T2/T6;-><init>()V

    sput-object v0, Lcom/T/T/T2/T6;->T:Lcom/T/T/T2/T6;

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

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TW()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    if-eqz v1, :cond_1

    const-string v3, "address"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    :cond_1
    const-string v3, "port"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T3(I)V

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
