.class final enum Lcom/car/launcher/MainActivity$SimType;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launcher/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/car/launcher/MainActivity$SimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/car/launcher/MainActivity$SimType;

.field public static final enum CHE_LIAN:Lcom/car/launcher/MainActivity$SimType;

.field public static final enum ECAR:Lcom/car/launcher/MainActivity$SimType;

.field public static final enum ECAR2:Lcom/car/launcher/MainActivity$SimType;

.field public static final enum FU_LAI:Lcom/car/launcher/MainActivity$SimType;

.field public static final enum PLAY_STORE:Lcom/car/launcher/MainActivity$SimType;

.field public static final enum TIAN_AN:Lcom/car/launcher/MainActivity$SimType;

.field public static final enum UNKNOWN:Lcom/car/launcher/MainActivity$SimType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/car/launcher/MainActivity$SimType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/car/launcher/MainActivity$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->UNKNOWN:Lcom/car/launcher/MainActivity$SimType;

    new-instance v0, Lcom/car/launcher/MainActivity$SimType;

    const-string v1, "ECAR"

    invoke-direct {v0, v1, v4}, Lcom/car/launcher/MainActivity$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->ECAR:Lcom/car/launcher/MainActivity$SimType;

    new-instance v0, Lcom/car/launcher/MainActivity$SimType;

    const-string v1, "ECAR2"

    invoke-direct {v0, v1, v5}, Lcom/car/launcher/MainActivity$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->ECAR2:Lcom/car/launcher/MainActivity$SimType;

    new-instance v0, Lcom/car/launcher/MainActivity$SimType;

    const-string v1, "CHE_LIAN"

    invoke-direct {v0, v1, v6}, Lcom/car/launcher/MainActivity$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->CHE_LIAN:Lcom/car/launcher/MainActivity$SimType;

    new-instance v0, Lcom/car/launcher/MainActivity$SimType;

    const-string v1, "TIAN_AN"

    invoke-direct {v0, v1, v7}, Lcom/car/launcher/MainActivity$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->TIAN_AN:Lcom/car/launcher/MainActivity$SimType;

    new-instance v0, Lcom/car/launcher/MainActivity$SimType;

    const-string v1, "FU_LAI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/car/launcher/MainActivity$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->FU_LAI:Lcom/car/launcher/MainActivity$SimType;

    new-instance v0, Lcom/car/launcher/MainActivity$SimType;

    const-string v1, "PLAY_STORE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/car/launcher/MainActivity$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->PLAY_STORE:Lcom/car/launcher/MainActivity$SimType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/car/launcher/MainActivity$SimType;

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->UNKNOWN:Lcom/car/launcher/MainActivity$SimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->ECAR:Lcom/car/launcher/MainActivity$SimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->ECAR2:Lcom/car/launcher/MainActivity$SimType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->CHE_LIAN:Lcom/car/launcher/MainActivity$SimType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/car/launcher/MainActivity$SimType;->TIAN_AN:Lcom/car/launcher/MainActivity$SimType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->FU_LAI:Lcom/car/launcher/MainActivity$SimType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->PLAY_STORE:Lcom/car/launcher/MainActivity$SimType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/launcher/MainActivity$SimType;->$VALUES:[Lcom/car/launcher/MainActivity$SimType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/car/launcher/MainActivity$SimType;
    .locals 1

    const-class v0, Lcom/car/launcher/MainActivity$SimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/car/launcher/MainActivity$SimType;

    return-object v0
.end method

.method public static values()[Lcom/car/launcher/MainActivity$SimType;
    .locals 1

    sget-object v0, Lcom/car/launcher/MainActivity$SimType;->$VALUES:[Lcom/car/launcher/MainActivity$SimType;

    invoke-virtual {v0}, [Lcom/car/launcher/MainActivity$SimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/car/launcher/MainActivity$SimType;

    return-object v0
.end method
