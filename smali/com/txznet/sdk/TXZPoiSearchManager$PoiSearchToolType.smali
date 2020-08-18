.class public final enum Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PoiSearchToolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum QIHOO:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

.field public static final enum TXZ:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    const-string v1, "TXZ"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->TXZ:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    new-instance v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    const-string v1, "QIHOO"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->QIHOO:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    sget-object v1, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->TXZ:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->QIHOO:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->T:[Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;
    .locals 1

    const-class v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->T:[Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    return-object v0
.end method
