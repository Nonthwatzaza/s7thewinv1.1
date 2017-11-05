.class Lcom/lenox/Lenox_Label/lenoxpicture$1;
.super Landroid/content/BroadcastReceiver;
.source "lenoxpicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenox/Lenox_Label/lenoxpicture;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenox/Lenox_Label/lenoxpicture;


# direct methods
.method constructor <init>(Lcom/lenox/Lenox_Label/lenoxpicture;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenox/Lenox_Label/lenoxpicture$1;->this$0:Lcom/lenox/Lenox_Label/lenoxpicture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string v3, "lenoxpic"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "image":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenox/Lenox_Label/lenoxpicture$1;->this$0:Lcom/lenox/Lenox_Label/lenoxpicture;

    iget-object v3, v3, Lcom/lenox/Lenox_Label/lenoxpicture;->lenoxpic:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 28
    const-string v3, "lenoxpicture"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 29
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "image"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method
