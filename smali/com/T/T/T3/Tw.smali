.class public final Lcom/T/T/T3/Tw;
.super Lcom/T/T/T3/Te;
.source "Proguard"


# instance fields
.field public final T7:I

.field public final TO:I

.field private final TQ:Ljava/lang/String;

.field public final To:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/T/T/T;->T3:I

    invoke-direct {p0, p1, v0}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/T/T/T3/Te;-><init>()V

    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/T/T/T3/Tw;->T7:I

    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/T/T/T3/Tw;->TO:I

    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/T/T/T3/Tw;->To:I

    iput p2, p0, Lcom/T/T/T3/Tw;->T2:I

    iput-object p1, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/T/T/T3/Tw;->Te:I

    invoke-virtual {p0}, Lcom/T/T/T3/Tw;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Tw;->TN:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Tw;->TP()C

    :cond_0
    return-void
.end method

.method private T(CCCCCCCC)V
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    sget-object v4, Lcom/T/T/T3/Tw;->Tr:[I

    aget v4, v4, p1

    mul-int/lit16 v4, v4, 0x3e8

    sget-object v5, Lcom/T/T/T3/Tw;->Tr:[I

    aget v5, v5, p2

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    sget-object v5, Lcom/T/T/T3/Tw;->Tr:[I

    aget v5, v5, p3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    sget-object v5, Lcom/T/T/T3/Tw;->Tr:[I

    aget v5, v5, p4

    add-int v3, v4, v5

    sget-object v4, Lcom/T/T/T3/Tw;->Tr:[I

    aget v4, v4, p5

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/T/T/T3/Tw;->Tr:[I

    aget v5, v5, p6

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    sget-object v4, Lcom/T/T/T3/Tw;->Tr:[I

    aget v4, v4, p7

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/T/T/T3/Tw;->Tr:[I

    aget v5, v5, p8

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private T(CCCCCC)Z
    .locals 6

    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-ne p1, v2, :cond_1

    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    :cond_6
    if-ne p3, v5, :cond_0

    if-eq p4, v2, :cond_3

    goto :goto_0

    :cond_7
    if-ne p5, v5, :cond_0

    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method static T(CCCCCCII)Z
    .locals 5

    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    if-ne p4, v2, :cond_4

    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    :cond_2
    if-ne p6, v2, :cond_5

    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p4, v3, :cond_0

    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public final T(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final T(IIILcom/T/T/T3/TB;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/T/T/T3/TB;->T(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final T(II[C)V
    .locals 3

    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method protected T(I[CII)V
    .locals 2

    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final T2(I)C
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public T3(Z)Z
    .locals 51

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Tw;->Te:I

    move/from16 v17, v0

    sub-int v48, v10, v17

    if-nez p1, :cond_4

    const/16 v10, 0xd

    move/from16 v0, v48

    if-le v0, v10, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v30

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v31

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v32

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v33

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v34

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v35

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int v10, v10, v48

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v36

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int v10, v10, v48

    add-int/lit8 v10, v10, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v37

    const/16 v10, 0x2f

    move/from16 v0, v30

    if-ne v0, v10, :cond_4

    const/16 v10, 0x44

    move/from16 v0, v31

    if-ne v0, v10, :cond_4

    const/16 v10, 0x61

    move/from16 v0, v32

    if-ne v0, v10, :cond_4

    const/16 v10, 0x74

    move/from16 v0, v33

    if-ne v0, v10, :cond_4

    const/16 v10, 0x65

    move/from16 v0, v34

    if-ne v0, v10, :cond_4

    const/16 v10, 0x28

    move/from16 v0, v35

    if-ne v0, v10, :cond_4

    const/16 v10, 0x2f

    move/from16 v0, v36

    if-ne v0, v10, :cond_4

    const/16 v10, 0x29

    move/from16 v0, v37

    if-ne v0, v10, :cond_4

    const/16 v47, -0x1

    const/16 v40, 0x6

    :goto_0
    move/from16 v0, v40

    move/from16 v1, v48

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int v10, v10, v40

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v29

    const/16 v10, 0x2b

    move/from16 v0, v29

    if-ne v0, v10, :cond_1

    move/from16 v47, v40

    :cond_0
    add-int/lit8 v40, v40, 0x1

    goto :goto_0

    :cond_1
    const/16 v10, 0x30

    move/from16 v0, v29

    if-lt v0, v10, :cond_2

    const/16 v10, 0x39

    move/from16 v0, v29

    if-le v0, v10, :cond_0

    :cond_2
    const/4 v10, -0x1

    move/from16 v0, v47

    if-ne v0, v10, :cond_3

    const/4 v10, 0x0

    :goto_1
    return v10

    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v46, v10, 0x6

    sub-int v10, v47, v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1, v10}, Lcom/T/T/T3/Tw;->T(II)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v41

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    move-object/from16 v0, v41

    invoke-static {v10, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->T:I

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/16 v10, 0x8

    move/from16 v0, v48

    if-eq v0, v10, :cond_5

    const/16 v10, 0xe

    move/from16 v0, v48

    if-eq v0, v10, :cond_5

    const/16 v10, 0x11

    move/from16 v0, v48

    if-ne v0, v10, :cond_11

    :cond_5
    if-eqz p1, :cond_6

    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/T/T/T3/Tw;->T(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/T/T/T3/Tw;->T(CCCCCCCC)V

    const/16 v10, 0x8

    move/from16 v0, v48

    if-eq v0, v10, :cond_10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v11

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v12

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v13

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v14

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v15

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v16

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/T/T/T3/Tw;->T(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v10, 0x11

    move/from16 v0, v48

    if-ne v0, v10, :cond_f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v26

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v27

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v28

    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_9

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_a

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_b

    const/16 v10, 0x39

    move/from16 v0, v27

    if-le v0, v10, :cond_c

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_d

    const/16 v10, 0x39

    move/from16 v0, v28

    if-le v0, v10, :cond_e

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_e
    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v26

    mul-int/lit8 v10, v10, 0x64

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v27

    mul-int/lit8 v17, v17, 0xa

    add-int v10, v10, v17

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v28

    add-int v42, v10, v17

    :goto_2
    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v12

    add-int v39, v10, v17

    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v14

    add-int v44, v10, v17

    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v16

    add-int v49, v10, v17

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->T:I

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_f
    const/16 v42, 0x0

    goto :goto_2

    :cond_10
    const/16 v39, 0x0

    const/16 v44, 0x0

    const/16 v49, 0x0

    const/16 v42, 0x0

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->T7:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_12

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_13

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_14

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/T/T/T3/Tw;->T(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_15

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v17, p0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    invoke-direct/range {v17 .. v25}, Lcom/T/T/T3/Tw;->T(CCCCCCCC)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v50

    const/16 v10, 0x54

    move/from16 v0, v50

    if-eq v0, v10, :cond_16

    const/16 v10, 0x20

    move/from16 v0, v50

    if-ne v0, v10, :cond_17

    if-nez p1, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->TO:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_1a

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_17
    const/16 v10, 0x22

    move/from16 v0, v50

    if-eq v0, v10, :cond_18

    const/16 v10, 0x1a

    move/from16 v0, v50

    if-ne v0, v10, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/T/T/T3/Tw;->TN:C

    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->T:I

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1b

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1c

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v11

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v12

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v13

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v14

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v15

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v16

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/T/T/T3/Tw;->T(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_1d

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_1d
    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v12

    add-int v39, v10, v17

    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v14

    add-int v44, v10, v17

    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v16

    add-int v49, v10, v17

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v38

    const/16 v10, 0x2e

    move/from16 v0, v38

    if-ne v0, v10, :cond_1e

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->To:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_1f

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/T/T/T3/Tw;->TN:C

    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->T:I

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v26

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v27

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v28

    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_20

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_21

    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_21
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_22

    const/16 v10, 0x39

    move/from16 v0, v27

    if-le v0, v10, :cond_23

    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_23
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_24

    const/16 v10, 0x39

    move/from16 v0, v28

    if-le v0, v10, :cond_25

    :cond_24
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_25
    sget-object v10, Lcom/T/T/T3/Tw;->Tr:[I

    aget v10, v10, v26

    mul-int/lit8 v10, v10, 0x64

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v27

    mul-int/lit8 v17, v17, 0xa

    add-int v10, v10, v17

    sget-object v17, Lcom/T/T/T3/Tw;->Tr:[I

    aget v17, v17, v28

    add-int v42, v10, v17

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/T/T/T3/Tw;->TW:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v10, v10, 0x17

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/T/T/T3/Tw;->TN:C

    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/T/T/T3/Tw;->T:I

    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public TJ()Z
    .locals 2

    iget v0, p0, Lcom/T/T/T3/Tw;->Te:I

    iget-object v1, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/T/T/T3/Tw;->TN:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final TP()C
    .locals 1

    iget v0, p0, Lcom/T/T/T3/Tw;->Te:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/T/T/T3/Tw;->Te:I

    invoke-virtual {p0, v0}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v0

    iput-char v0, p0, Lcom/T/T/T3/Tw;->TN:C

    return v0
.end method

.method public TQ()[B
    .locals 3

    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    iget v1, p0, Lcom/T/T/T3/Tw;->TG:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/T/T/T3/Tw;->Tn:I

    invoke-static {v0, v1, v2}, Lcom/T/T/TN/T;->T(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public TU()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/T/T/T3/Tw;->T3(Z)Z

    move-result v0

    return v0
.end method

.method public final TW()Ljava/lang/String;
    .locals 5

    iget v2, p0, Lcom/T/T/T3/Tw;->TG:I

    iget v3, p0, Lcom/T/T/T3/Tw;->Tn:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/T/T/T3/Tw;->T2(I)C

    move-result v0

    iget v1, p0, Lcom/T/T/T3/Tw;->Tn:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget-object v2, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    iget v3, p0, Lcom/T/T/T3/Tw;->TG:I

    iget v4, p0, Lcom/T/T/T3/Tw;->TG:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final Tt()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/T/T/T3/Tw;->TR:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/T/T/T3/Tw;->TQ:Ljava/lang/String;

    iget v1, p0, Lcom/T/T/T3/Tw;->TG:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/T/T/T3/Tw;->TG:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/T/T/T3/Tw;->Tn:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/T/T/T3/Tw;->Ty:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/T/T/T3/Tw;->Tn:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method
