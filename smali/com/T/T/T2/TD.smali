.class public Lcom/T/T/T2/TD;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/TD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/TD;

    invoke-direct {v0}, Lcom/T/T/T2/TD;-><init>()V

    sput-object v0, Lcom/T/T/T2/TD;->T:Lcom/T/T/T2/TD;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
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
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/String;)V

    goto :goto_0
.end method
