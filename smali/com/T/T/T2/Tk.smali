.class public Lcom/T/T/T2/Tk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/Tk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/Tk;

    invoke-direct {v0}, Lcom/T/T/T2/Tk;-><init>()V

    sput-object v0, Lcom/T/T/T2/Tk;->T:Lcom/T/T/T2/Tk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v13

    if-nez p2, :cond_0

    invoke-virtual {v13}, Lcom/T/T/T2/T30;->T()V

    :goto_0
    return-void

    :cond_0
    sget-object v19, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-class v20, Ljava/util/Date;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    const-string v19, "new Date("

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    check-cast p2, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const/16 v19, 0x29

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/T/T/T2/T30;->T(JC)V

    goto :goto_0

    :cond_1
    const/16 v19, 0x7b

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v19, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/String;)V

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(C)V

    const-string v19, "val"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    check-cast p2, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/T/T/T2/T30;->T(J)V

    const/16 v19, 0x7d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_2
    move-object/from16 v6, p2

    check-cast v6, Ljava/util/Date;

    sget-object v19, Lcom/T/T/T2/T3c;->To:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->T()Ljava/text/DateFormat;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v19, Lcom/T/T/T;->T2:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sget-object v19, Lcom/T/T/T2/T3c;->Te:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v19

    if-eqz v19, :cond_9

    sget-object v19, Lcom/T/T/T2/T3c;->T3:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x27

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v12, v19, 0x1

    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eqz v10, :cond_6

    const-string v19, "0000-00-00T00:00:00.000"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v19, 0x17

    move/from16 v0, v19

    invoke-static {v10, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x13

    move/from16 v0, v19

    invoke-static {v14, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v11, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-static {v9, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-static {v7, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-static {v12, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    :goto_2
    invoke-virtual {v13, v4}, Lcom/T/T/T2/T30;->write([C)V

    sget-object v19, Lcom/T/T/T2/T3c;->T3:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x27

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto/16 :goto_0

    :cond_5
    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto/16 :goto_1

    :cond_6
    if-nez v14, :cond_7

    if-nez v11, :cond_7

    if-nez v9, :cond_7

    const-string v19, "0000-00-00"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-static {v7, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-static {v12, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    goto :goto_2

    :cond_7
    const-string v19, "0000-00-00T00:00:00"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v19, 0x13

    move/from16 v0, v19

    invoke-static {v14, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v11, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-static {v9, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-static {v7, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-static {v12, v0, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/T/T/TN/TN;->T(II[C)V

    goto :goto_2

    :cond_8
    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/T/T/T2/T30;->T(J)V

    goto/16 :goto_0
.end method
