.class public Lcom/T/T/T2/TN;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/TN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/TN;

    invoke-direct {v0}, Lcom/T/T/T2/TN;-><init>()V

    sput-object v0, Lcom/T/T/T2/TN;->T:Lcom/T/T/T2/TN;

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

    move-result-object v3

    if-nez p2, :cond_1

    sget-object v5, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v3, v5}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[]"

    invoke-virtual {v3, v5}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    const/16 v5, 0x5b

    invoke-virtual {v3, v5}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v4

    if-eqz v1, :cond_2

    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Lcom/T/T/T2/T30;->T(C)V

    :cond_2
    invoke-virtual {v3, v4}, Lcom/T/T/T2/T30;->T3(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto :goto_0
.end method
