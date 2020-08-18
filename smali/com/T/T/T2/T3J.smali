.class public Lcom/T/T/T2/T3J;
.super Lcom/T/T/T2/TZ;
.source "Proguard"


# instance fields
.field T2:Z

.field T3:Z

.field private TG:Z

.field TN:Z

.field Te:Z

.field private Tn:Ljava/lang/String;

.field private Tw:Lcom/T/T/T2/T3B;

.field private Ty:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/T/T/TN/T2;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/T/T/T2/TZ;-><init>(Lcom/T/T/TN/T2;)V

    iput-boolean v5, p0, Lcom/T/T/T2/T3J;->TG:Z

    iput-boolean v5, p0, Lcom/T/T/T2/T3J;->T3:Z

    iput-boolean v5, p0, Lcom/T/T/T2/T3J;->T2:Z

    iput-boolean v5, p0, Lcom/T/T/T2/T3J;->TN:Z

    iput-boolean v5, p0, Lcom/T/T/T2/T3J;->Te:Z

    const-class v5, Lcom/T/T/T/T3;

    invoke-virtual {p1, v5}, Lcom/T/T/TN/T2;->T(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T3;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/T/T/T/T3;->T3()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/T/T/T2/T3J;->Tn:Ljava/lang/String;

    iget-object v5, p0, Lcom/T/T/T2/T3J;->Tn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/T/T/T2/T3J;->Tn:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Lcom/T/T/T/T3;->Te()[Lcom/T/T/T2/T3c;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v2, v1, v3

    sget-object v5, Lcom/T/T/T2/T3c;->Tn:Lcom/T/T/T2/T3c;

    if-ne v2, v5, :cond_2

    iput-boolean v6, p0, Lcom/T/T/T2/T3J;->TG:Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/T/T/T2/T3c;->Ty:Lcom/T/T/T2/T3c;

    if-ne v2, v5, :cond_3

    iput-boolean v6, p0, Lcom/T/T/T2/T3J;->T3:Z

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/T/T/T2/T3c;->TG:Lcom/T/T/T2/T3c;

    if-ne v2, v5, :cond_4

    iput-boolean v6, p0, Lcom/T/T/T2/T3J;->T2:Z

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    if-ne v2, v5, :cond_5

    iput-boolean v6, p0, Lcom/T/T/T2/T3J;->TN:Z

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/T/T/T2/T3c;->TN:Lcom/T/T/T2/T3c;

    if-ne v2, v5, :cond_1

    iput-boolean v6, p0, Lcom/T/T/T2/T3J;->Te:Z

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/T/T/T2/T3J;->T(Lcom/T/T/T2/TS;)V

    iget-object v2, p0, Lcom/T/T/T2/T3J;->Tn:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/T/T/T2/T3J;->Tn:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Lcom/T/T/T2/TS;->T(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/T/T/T2/T3J;->Tw:Lcom/T/T/T2/T3B;

    if-nez v2, :cond_1

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/T/T/T2/T3J;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v2}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    :goto_1
    iget-object v2, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v2

    iput-object v2, p0, Lcom/T/T/T2/T3J;->Tw:Lcom/T/T/T2/T3B;

    :cond_1
    if-nez p2, :cond_7

    iget-boolean v2, p0, Lcom/T/T/T2/T3J;->TG:Z

    if-eqz v2, :cond_3

    const-class v2, Ljava/lang/Number;

    iget-object v3, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/T/T/T2/T3J;->T3:Z

    if-eqz v2, :cond_4

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    const-string v3, "\"\""

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/T/T/T2/T3J;->T2:Z

    if-eqz v2, :cond_5

    const-class v2, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/T/T/T2/T3J;->TN:Z

    if-eqz v2, :cond_6

    const-class v2, Ljava/util/Collection;

    iget-object v3, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/T/T/T2/T3J;->Tw:Lcom/T/T/T2/T3B;

    iget-object v3, p0, Lcom/T/T/T2/T3J;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v4, v3, v4}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/T/T/T2/T3J;->Te:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/T/T/T2/T3J;->Ty:Ljava/lang/Class;

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/T/T/T2/T3J;->Tw:Lcom/T/T/T2/T3B;

    iget-object v3, p0, Lcom/T/T/T2/T3J;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/T/T/T2/T3J;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v4}, Lcom/T/T/TN/T2;->T3()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1, v0}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v1

    iget-object v2, p0, Lcom/T/T/T2/T3J;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v2}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/T/T/T2/T3J;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T3()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
.end method
