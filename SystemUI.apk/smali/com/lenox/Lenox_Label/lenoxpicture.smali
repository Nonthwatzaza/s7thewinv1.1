.class public Lcom/lenox/Lenox_Label/lenoxpicture;
.super Landroid/widget/ImageView;
.source "lenoxpicture.java"


# instance fields
.field lenoxpic:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "at"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const v4, 0x7f0d0148

    invoke-virtual {p0, v4}, Lcom/lenox/Lenox_Label/lenoxpicture;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenox/Lenox_Label/lenoxpicture;->lenoxpic:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p0}, Lcom/lenox/Lenox_Label/lenoxpicture;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "lenoxpicture"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 17
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "image"

    const-string v5, "null"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "imagee":Ljava/lang/String;
    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 20
    iget-object v4, p0, Lcom/lenox/Lenox_Label/lenoxpicture;->lenoxpic:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 22
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "lenoxpekture"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v0, Lcom/lenox/Lenox_Label/lenoxpicture$1;

    invoke-direct {v0, p0}, Lcom/lenox/Lenox_Label/lenoxpicture$1;-><init>(Lcom/lenox/Lenox_Label/lenoxpicture;)V

    .line 34
    .local v0, "br":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method
