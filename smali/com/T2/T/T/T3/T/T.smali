.class public Lcom/T2/T/T/T3/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T/T3/T;


# instance fields
.field private final T:Lcom/T2/T/T/T3/T;

.field private final T3:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/T2/T/T/T3/T;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T/T3/T;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T2/T/T/T3/T/T;->T:Lcom/T2/T/T/T3/T;

    iput-object p2, p0, Lcom/T2/T/T/T3/T/T;->T3:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T/T3/T/T;->T:Lcom/T2/T/T/T3/T;

    invoke-interface {v0}, Lcom/T2/T/T/T3/T;->T()V

    return-void
.end method
