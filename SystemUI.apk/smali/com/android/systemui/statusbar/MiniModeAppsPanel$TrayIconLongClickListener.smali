.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;
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
    name = "TrayIconLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 2513
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    .prologue
    .line 2513
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 2516
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2520
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2521
    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    iput-object v4, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2522
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-nez v4, :cond_0

    move v4, v5

    .line 2558
    :goto_0
    return v4

    .line 2526
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v0

    .line 2527
    .local v0, "arrange":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    sget v7, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v0

    iput v7, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentLaunchMode:I

    .line 2528
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v8

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getCurrentAppRect(Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    .line 2530
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2531
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2532
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2533
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v7, v8}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2535
    const/4 v4, 0x0

    new-instance v7, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v7, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v4, v7, v8, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move v4, v6

    .line 2536
    goto :goto_0

    .end local v0    # "arrange":I
    :cond_1
    move v4, v5

    .line 2539
    goto :goto_0

    .line 2543
    :cond_2
    if-eqz p1, :cond_3

    .line 2545
    move-object v3, p1

    .line 2552
    .local v3, "v":Landroid/view/View;
    const-string v4, "MiniAppDragItem"

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5500()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 2553
    .local v1, "dragData":Landroid/content/ClipData;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 2554
    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2555
    .local v2, "icon":Landroid/widget/ImageView;
    new-instance v4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v4, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v1, v4, v3, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .end local v1    # "dragData":Landroid/content/ClipData;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    move v4, v6

    .line 2558
    goto/16 :goto_0
.end method
