.class public Lcom/T/T/T2/TL;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/TL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/TL;

    invoke-direct {v0}, Lcom/T/T/T2/TL;-><init>()V

    sput-object v0, Lcom/T/T/T2/TL;->T:Lcom/T/T/T2/TL;

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

    move-object v2, p2

    check-cast v2, Ljava/lang/Character;

    if-nez v2, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-nez v0, :cond_1

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto :goto_0
.end method
