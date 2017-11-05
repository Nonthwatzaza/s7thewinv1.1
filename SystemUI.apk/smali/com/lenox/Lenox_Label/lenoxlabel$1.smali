.class Lcom/lenox/Lenox_Label/lenoxlabel$1;
.super Landroid/content/BroadcastReceiver;
.source "lenoxlabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenox/Lenox_Label/lenoxlabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenox/Lenox_Label/lenoxlabel;


# direct methods
.method constructor <init>(Lcom/lenox/Lenox_Label/lenoxlabel;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 61
    const-string v6, "label"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "label":Ljava/lang/String;
    const-string v6, "labelsize"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "labelsize":Ljava/lang/String;
    const-string v6, "labelcolor"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "labelcolor":Ljava/lang/String;
    const-string v6, "fontstyle"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "fontstyle":Ljava/lang/String;
    const-string v6, "bold"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 81
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 83
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    :goto_1
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    const-string v6, "lenoxlabel"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 92
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "label"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v6, "labelsize"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v6, "labelcolor"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v6, "fontstyle"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void

    .line 69
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v6, "italic"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v6, "bolditalic"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v6, "normal"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 87
    :cond_4
    iget-object v6, p0, Lcom/lenox/Lenox_Label/lenoxlabel$1;->this$0:Lcom/lenox/Lenox_Label/lenoxlabel;

    iget-object v6, v6, Lcom/lenox/Lenox_Label/lenoxlabel;->lenoxlabel:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
