.class public Lcom/T/T/T2/Te;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/Te;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/Te;

    invoke-direct {v0}, Lcom/T/T/T2/Te;-><init>()V

    sput-object v0, Lcom/T/T/T2/Te;->T:Lcom/T/T/T2/Te;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T3(I)V

    return-void
.end method
