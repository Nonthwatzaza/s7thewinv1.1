.class Lcom/bros/aokp/TubToggles$1;
.super Landroid/content/BroadcastReceiver;
.source "TubToggles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bros/aokp/TubToggles;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bros/aokp/TubToggles;


# direct methods
.method constructor <init>(Lcom/bros/aokp/TubToggles;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bros/aokp/TubToggles$1;->this$0:Lcom/bros/aokp/TubToggles;

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bros/aokp/TubToggles$1;->this$0:Lcom/bros/aokp/TubToggles;

    iget-object v0, v0, Lcom/bros/aokp/TubToggles;->toggles:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    return-void
.end method
