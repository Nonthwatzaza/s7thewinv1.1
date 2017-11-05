.class public Lcom/lenox/Lenox_Label/lenoxlabel;
.super Landroid/widget/TextView;
.source "lenoxlabel.java"


# instance fields
.field lenoxlabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "at"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const v7, 0x7f0d014a

    invoke-virtual {p0, v7}, Lcom/lenox/Lenox_Label/lenoxlabel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0}, Lcom/lenox/Lenox_Label/lenoxlabel;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "lenoxlabel"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 19
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "label"

    const-string v8, "What is on your mind?"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "aa":Ljava/lang/String;
    const-string v7, "labelsize"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "bb":Ljava/lang/String;
    const-string v7, "labelcolor"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "cc":Ljava/lang/String;
    const-string v7, "fontstyle"

    const-string v8, "normal"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "dd":Ljava/lang/String;
    const-string v7, "bold"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 25
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 39
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    if-nez v1, :cond_4

    .line 42
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    :goto_1
    if-nez v3, :cond_5

    .line 50
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    :goto_2
    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "lenoxlabel"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v5, "filter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/lenox/Lenox_Label/lenoxlabel$1;

    invoke-direct {v2, p0}, Lcom/lenox/Lenox_Label/lenoxlabel$1;-><init>(Lcom/lenox/Lenox_Label/lenoxlabel;)V

    .line 100
    .local v2, "br":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void

    .line 27
    .end local v2    # "br":Landroid/content/BroadcastReceiver;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const-string v7, "italic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 29
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 31
    :cond_2
    const-string v7, "bolditalic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 33
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v8, 0x3

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 35
    :cond_3
    const-string v7, "normal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 46
    :cond_4
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 54
    :cond_5
    iget-object v7, p0, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method
