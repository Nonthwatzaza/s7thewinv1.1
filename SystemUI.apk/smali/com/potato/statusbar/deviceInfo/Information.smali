.class public Lcom/potato/statusbar/deviceInfo/Information;
.super Landroid/widget/LinearLayout;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/potato/statusbar/deviceInfo/Information$BattInfo;,
        Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;,
        Lcom/potato/statusbar/deviceInfo/Information$CPUInfo;,
        Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;,
        Lcom/potato/statusbar/deviceInfo/Information$FirmInfo;,
        Lcom/potato/statusbar/deviceInfo/Information$MemInfo;,
        Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/potato/statusbar/deviceInfo/Information;->setOrientation(I)V

    .line 24
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    .local v11, "cpuHolder":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    .local v20, "memHolder":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    .local v17, "firmHolder":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    .local v14, "devHolder":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    .local v8, "buildHolder":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    .local v5, "battHolder":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    .local v23, "upTimeHolder":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    .local v12, "cpuText":Landroid/widget/TextView;
    const-string v25, "CPU : "

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    .local v21, "memText":Landroid/widget/TextView;
    const-string v25, "Memory : "

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    .local v18, "firmText":Landroid/widget/TextView;
    const-string v25, "Version : "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    .local v15, "devText":Landroid/widget/TextView;
    const-string v25, "Phone model: "

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    .local v9, "buildText":Landroid/widget/TextView;
    const-string v25, "No versi : "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    .local v6, "battText":Landroid/widget/TextView;
    const-string v25, "Battery : "

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    .local v24, "upTimeText":Landroid/widget/TextView;
    const-string v25, "Up time : "

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v10, Lcom/potato/statusbar/deviceInfo/Information$CPUInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v10, v0, v1, v2}, Lcom/potato/statusbar/deviceInfo/Information$CPUInfo;-><init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    .local v10, "cpu":Lcom/potato/statusbar/deviceInfo/Information$CPUInfo;
    new-instance v19, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/potato/statusbar/deviceInfo/Information$MemInfo;-><init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    .local v19, "mem":Lcom/potato/statusbar/deviceInfo/Information$MemInfo;
    new-instance v16, Lcom/potato/statusbar/deviceInfo/Information$FirmInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/potato/statusbar/deviceInfo/Information$FirmInfo;-><init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .local v16, "firm":Lcom/potato/statusbar/deviceInfo/Information$FirmInfo;
    new-instance v13, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v13, v0, v1, v2}, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;-><init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    .local v13, "dev":Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;
    new-instance v7, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;-><init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    .local v7, "build":Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;
    new-instance v4, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;-><init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    .local v4, "batt":Lcom/potato/statusbar/deviceInfo/Information$BattInfo;
    new-instance v22, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;-><init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    .local v22, "upTime":Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/potato/statusbar/deviceInfo/Information;->addView(Landroid/view/View;)V

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/potato/statusbar/deviceInfo/Information;->addView(Landroid/view/View;)V

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/potato/statusbar/deviceInfo/Information;->addView(Landroid/view/View;)V

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/potato/statusbar/deviceInfo/Information;->addView(Landroid/view/View;)V

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/potato/statusbar/deviceInfo/Information;->addView(Landroid/view/View;)V

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/potato/statusbar/deviceInfo/Information;->addView(Landroid/view/View;)V

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/potato/statusbar/deviceInfo/Information;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method
