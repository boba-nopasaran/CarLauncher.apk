.class public Lcom/T/T/T2/T3t;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T3t;

    invoke-direct {v0}, Lcom/T/T/T2/T3t;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3t;->T:Lcom/T/T/T2/T3t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/T/T/T2/T3t;->T(Lcom/T/T/T2/TS;Ljava/lang/String;)V

    return-void
.end method

.method public T(Lcom/T/T/T2/TS;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    if-nez p2, :cond_1

    sget-object v1, Lcom/T/T/T2/T3c;->Ty:Lcom/T/T/T2/T3c;

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto :goto_0
.end method
