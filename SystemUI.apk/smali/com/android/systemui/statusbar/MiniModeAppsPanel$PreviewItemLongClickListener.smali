.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 2365
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    .prologue
    .line 2365
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2368
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v3

    .line 2379
    :goto_0
    return v2

    .line 2374
    :cond_0
    const-string v2, "MiniAppDragItem"

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5500()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 2375
    .local v0, "dragData":Landroid/content/ClipData;
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 2376
    const v2, 0x7f0d0068

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2377
    .local v1, "icon":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0, v2, p1, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move v2, v4

    .line 2379
    goto :goto_0
.end method
