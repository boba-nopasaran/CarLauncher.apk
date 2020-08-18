.class final Lcom/iflytek/cloud/thirdparty/aF$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/aF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/cloud/thirdparty/aF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/cloud/thirdparty/aF;
    .locals 2

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aF;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/aF;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aF;->a(Lcom/iflytek/cloud/thirdparty/aF;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aF;->b(Lcom/iflytek/cloud/thirdparty/aF;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aF;->c(Lcom/iflytek/cloud/thirdparty/aF;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aF;->d(Lcom/iflytek/cloud/thirdparty/aF;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aF;->e(Lcom/iflytek/cloud/thirdparty/aF;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aF;->f(Lcom/iflytek/cloud/thirdparty/aF;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/aF;->g(Lcom/iflytek/cloud/thirdparty/aF;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/cloud/thirdparty/aF;
    .locals 1

    new-array v0, p1, [Lcom/iflytek/cloud/thirdparty/aF;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/aF$1;->a(Landroid/os/Parcel;)Lcom/iflytek/cloud/thirdparty/aF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/aF$1;->a(I)[Lcom/iflytek/cloud/thirdparty/aF;

    move-result-object v0

    return-object v0
.end method
