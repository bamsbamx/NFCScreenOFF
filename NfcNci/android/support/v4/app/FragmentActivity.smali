.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityJB;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$1;,
        Landroid/support/v4/app/FragmentActivity$HostCallbacks;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field mNextCandidateRequestIndex:I

.field mOptionsMenuInvalidated:Z

.field mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;-><init>()V

    .line 92
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Landroid/support/v4/app/FragmentController;->createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    .line 75
    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/app/Fragment;)I
    .registers 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v3, 0xfffe

    .line 981
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-lt v1, v3, :cond_14

    .line 982
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Too many pending Fragment activity results."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 986
    :cond_14
    :goto_14
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_26

    .line 988
    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    .line 987
    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_14

    .line 991
    :cond_26
    iget v0, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 992
    .local v0, "requestIndex":I
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 994
    iget v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    .line 993
    iput v1, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 996
    return v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 782
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    if-nez p3, :cond_c

    .line 784
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    return-void

    .line 787
    :cond_c
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-nez v3, :cond_18

    .line 789
    return-void

    :cond_18
    move-object v1, p3

    .line 791
    check-cast v1, Landroid/view/ViewGroup;

    .line 792
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 793
    .local v0, "N":I
    if-gtz v0, :cond_22

    .line 794
    return-void

    .line 796
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 797
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    if-ge v2, v0, :cond_43

    .line 798
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 797
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 781
    :cond_43
    return-void
.end method

.method private requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 8
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 1004
    const/4 v1, -0x1

    if-ne p3, v1, :cond_8

    .line 1005
    invoke-static {p0, p2, p3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1006
    return-void

    .line 1008
    :cond_8
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 1010
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 1011
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 1013
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    .line 1012
    invoke-static {p0, p2, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_21

    .line 1015
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 1003
    return-void

    .line 1014
    .end local v0    # "requestIndex":I
    :catchall_21
    move-exception v1

    .line 1015
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 1014
    throw v1
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .registers 14
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x56

    const/16 v8, 0x46

    const/16 v12, 0x2c

    const/16 v11, 0x20

    const/16 v9, 0x2e

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 717
    .local v3, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const/16 v7, 0x7b

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v7

    sparse-switch v7, :sswitch_data_15c

    .line 725
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    :goto_39
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_136

    move v7, v8

    :goto_40
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_139

    const/16 v7, 0x45

    :goto_4b
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v7

    if-eqz v7, :cond_13c

    move v7, v9

    :goto_55
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v7

    if-eqz v7, :cond_140

    const/16 v7, 0x48

    :goto_60
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v7

    if-eqz v7, :cond_143

    move v7, v10

    :goto_6a
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_146

    const/16 v7, 0x43

    :goto_75
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_149

    const/16 v7, 0x4c

    :goto_80
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_14c

    :goto_8c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_14f

    const/16 v7, 0x53

    :goto_97
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_a2

    const/16 v9, 0x50

    :cond_a2
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    const/16 v7, 0x2d

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    .line 747
    .local v2, "id":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_118

    .line 748
    const-string/jumbo v7, " #"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 751
    .local v5, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_118

    if-eqz v5, :cond_118

    .line 754
    const/high16 v7, -0x1000000

    and-int/2addr v7, v2

    sparse-switch v7, :sswitch_data_16a

    .line 762
    :try_start_f1
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, "pkgname":Ljava/lang/String;
    :goto_f5
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "typename":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "entryname":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-string/jumbo v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_118
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f1 .. :try_end_118} :catch_15a

    .line 777
    .end local v1    # "entryname":Ljava/lang/String;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "typename":Ljava/lang/String;
    :cond_118
    :goto_118
    const-string/jumbo v7, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 722
    .end local v2    # "id":I
    :sswitch_123
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 723
    :sswitch_128
    const/16 v7, 0x49

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 724
    :sswitch_12f
    const/16 v7, 0x47

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :cond_136
    move v7, v9

    .line 727
    goto/16 :goto_40

    :cond_139
    move v7, v9

    .line 728
    goto/16 :goto_4b

    .line 729
    :cond_13c
    const/16 v7, 0x44

    goto/16 :goto_55

    :cond_140
    move v7, v9

    .line 730
    goto/16 :goto_60

    :cond_143
    move v7, v9

    .line 731
    goto/16 :goto_6a

    :cond_146
    move v7, v9

    .line 732
    goto/16 :goto_75

    :cond_149
    move v7, v9

    .line 733
    goto/16 :goto_80

    :cond_14c
    move v8, v9

    .line 735
    goto/16 :goto_8c

    :cond_14f
    move v7, v9

    .line 736
    goto/16 :goto_97

    .line 756
    .restart local v2    # "id":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    :sswitch_152
    :try_start_152
    const-string/jumbo v4, "app"

    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_f5

    .line 759
    .end local v4    # "pkgname":Ljava/lang/String;
    :sswitch_156
    const-string/jumbo v4, "android"
    :try_end_159
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_152 .. :try_end_159} :catch_15a

    .restart local v4    # "pkgname":Ljava/lang/String;
    goto :goto_f5

    .line 773
    .end local v4    # "pkgname":Ljava/lang/String;
    :catch_15a
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_118

    .line 721
    :sswitch_data_15c
    .sparse-switch
        0x0 -> :sswitch_123
        0x4 -> :sswitch_128
        0x8 -> :sswitch_12f
    .end sparse-switch

    .line 754
    :sswitch_data_16a
    .sparse-switch
        0x1000000 -> :sswitch_156
        0x7f000000 -> :sswitch_152
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .registers 4
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 803
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_12

    .line 804
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 805
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 806
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 802
    :cond_11
    :goto_11
    return-void

    .line 808
    :cond_12
    if-eqz p1, :cond_11

    .line 813
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    goto :goto_11
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 696
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_6

    .line 700
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 709
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 711
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, p3, v2}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 695
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 660
    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 662
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :cond_b
    return-object v1
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 151
    shr-int/lit8 v0, p1, 0x10

    .line 152
    .local v0, "requestIndex":I
    if-eqz v0, :cond_4f

    .line 153
    add-int/lit8 v0, v0, -0x1

    .line 155
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 157
    if-nez v2, :cond_24

    .line 158
    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 161
    :cond_24
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 162
    .local v1, "targetFragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_47

    .line 163
    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_46
    return-void

    .line 165
    :cond_47
    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v1, v3, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_46

    .line 170
    .end local v1    # "targetFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "who":Ljava/lang/String;
    :cond_4f
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 843
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_f

    .line 179
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressedNotHandled()V

    .line 177
    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 313
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentController;->attachHost(Landroid/support/v4/app/Fragment;)V

    .line 315
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreate(Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 319
    .local v2, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v2, :cond_18

    .line 320
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-object v7, v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 322
    :cond_18
    if-eqz p1, :cond_57

    .line 323
    const-string/jumbo v6, "android:support:fragments"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 324
    .local v3, "p":Landroid/os/Parcelable;
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    if-eqz v2, :cond_27

    iget-object v5, v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    :cond_27
    invoke-virtual {v6, v3, v5}, Landroid/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 327
    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 329
    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 328
    iput v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 330
    const-string/jumbo v5, "android:support:request_indicies"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 331
    .local v4, "requestCodes":[I
    const-string/jumbo v5, "android:support:request_fragment_who"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "fragmentWhos":[Ljava/lang/String;
    if-eqz v4, :cond_4e

    if-nez v0, :cond_6b

    .line 334
    :cond_4e
    const-string/jumbo v5, "FragmentActivity"

    const-string/jumbo v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "requestCodes":[I
    :cond_57
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v5, :cond_65

    .line 345
    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v5}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 346
    const/4 v5, 0x0

    iput v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 349
    :cond_65
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentController;->dispatchCreate()V

    .line 312
    return-void

    .line 333
    .restart local v0    # "fragmentWhos":[Ljava/lang/String;
    .restart local v3    # "p":Landroid/os/Parcelable;
    .restart local v4    # "requestCodes":[I
    :cond_6b
    array-length v5, v4

    array-length v6, v0

    if-ne v5, v6, :cond_4e

    .line 336
    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    array-length v6, v4

    invoke-direct {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    .line 337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_78
    array-length v5, v4

    if-ge v1, v5, :cond_57

    .line 338
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    aget v6, v4, v1

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_78
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 357
    if-nez p1, :cond_1a

    .line 358
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 359
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 360
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    .line 361
    return v0

    .line 366
    :cond_18
    const/4 v1, 0x1

    return v1

    .line 368
    .end local v0    # "show":Z
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onDestroy()V

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 386
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchDestroy()V

    .line 387
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderDestroy()V

    .line 381
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    .line 396
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 397
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 400
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 401
    const/4 v0, 0x1

    return v0

    .line 404
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 412
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onLowMemory()V

    .line 413
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchLowMemory()V

    .line 411
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 422
    const/4 v0, 0x1

    return v0

    .line 425
    :cond_8
    sparse-switch p1, :sswitch_data_1c

    .line 433
    const/4 v0, 0x0

    return v0

    .line 427
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 430
    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 425
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3
    .param p1, "isInMultiWindowMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 280
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onNewIntent(Landroid/content/Intent;)V

    .line 477
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 475
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 442
    packed-switch p1, :pswitch_data_e

    .line 447
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPanelClosed(ILandroid/view/Menu;)V

    .line 441
    return-void

    .line 444
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_3

    .line 442
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 455
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPause()V

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 457
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 458
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 461
    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchPause()V

    .line 454
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 294
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 509
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPostResume()V

    .line 510
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 512
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 508
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 530
    if-nez p1, :cond_1d

    if-eqz p3, :cond_1d

    .line 531
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v1, :cond_11

    .line 532
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 533
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 534
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 536
    :cond_11
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 537
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 538
    return v0

    .line 540
    .end local v0    # "goforit":Z
    :cond_1d
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method onReallyStop()V
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    .line 828
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchReallyStop()V

    .line 825
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0xffff

    .line 908
    shr-int/lit8 v3, p1, 0x10

    and-int v1, v3, v4

    .line 909
    .local v1, "index":I
    if-eqz v1, :cond_46

    .line 910
    add-int/lit8 v1, v1, -0x1

    .line 912
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 913
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 914
    if-nez v2, :cond_24

    .line 915
    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void

    .line 918
    :cond_24
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 919
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_47

    .line 920
    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    .end local v2    # "who":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 922
    .restart local v0    # "frag":Landroid/support/v4/app/Fragment;
    .restart local v2    # "who":Ljava/lang/String;
    :cond_47
    and-int v3, p1, v4

    invoke-virtual {v0, v3, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_46
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 498
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onResume()V

    .line 499
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 501
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 497
    return-void
.end method

.method protected onResumeFragments()V
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchResume()V

    .line 521
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 557
    iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v4, :cond_9

    .line 558
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 561
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, "custom":Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainNestedNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 564
    .local v1, "fragments":Landroid/support/v4/app/FragmentManagerNonConfig;
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    .line 566
    .local v2, "loaders":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    if-nez v1, :cond_20

    if-nez v2, :cond_20

    if-nez v0, :cond_20

    .line 567
    return-object v5

    .line 570
    :cond_20
    new-instance v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 571
    .local v3, "nci":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 572
    iput-object v1, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 573
    iput-object v2, v3, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    .line 574
    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/support/v4/app/BaseFragmentActivityJB;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 583
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v2

    .line 584
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_11

    .line 585
    const-string/jumbo v4, "android:support:fragments"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 587
    :cond_11
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-lez v4, :cond_5b

    .line 588
    const-string/jumbo v4, "android:support:next_request_index"

    iget v5, p0, Landroid/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 591
    .local v3, "requestCodes":[I
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 592
    .local v0, "fragmentWhos":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v1, v4, :cond_4f

    .line 593
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 594
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 596
    :cond_4f
    const-string/jumbo v4, "android:support:request_indicies"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 597
    const-string/jumbo v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 581
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "requestCodes":[I
    :cond_5b
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 607
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStart()V

    .line 609
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 610
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 611
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_19

    .line 614
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 615
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchActivityCreated()V

    .line 618
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 619
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    .line 621
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStart()V

    .line 626
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->reportLoaderStart()V

    .line 606
    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 483
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 634
    invoke-super {p0}, Landroid/support/v4/app/BaseFragmentActivityJB;->onStop()V

    .line 636
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 637
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentController;->dispatchStop()V

    .line 633
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    .prologue
    .line 238
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 237
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v4/app/SharedElementCallback;

    .prologue
    .line 251
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 250
    return-void
.end method

.method public final setSupportMediaController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .registers 4
    .param p1, "mediaController"    # Landroid/support/v4/media/session/MediaControllerCompat;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 201
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 198
    :cond_f
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 866
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_a

    .line 867
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 868
    invoke-static {p2}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 871
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;I)V

    .line 863
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 932
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 931
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 940
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 942
    if-ne p3, v2, :cond_e

    .line 943
    const/4 v1, -0x1

    :try_start_8
    invoke-static {p0, p2, v1, p4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 951
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 944
    return-void

    .line 946
    :cond_e
    :try_start_e
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 947
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 949
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    .line 948
    invoke-static {p0, p2, v1, p4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_24

    .line 951
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 939
    return-void

    .line 950
    .end local v0    # "requestIndex":I
    :catchall_24
    move-exception v1

    .line 951
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 950
    throw v1
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I

    .prologue
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 963
    const/4 v0, -0x1

    if-ne p3, v0, :cond_17

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 964
    :try_start_10
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_38

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 966
    return-void

    .line 968
    :cond_17
    :try_start_17
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 969
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroid/support/v4/app/Fragment;)I

    move-result v8

    .line 971
    .local v8, "requestIndex":I
    add-int/lit8 v0, v8, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 970
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_38

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 960
    return-void

    .line 973
    .end local v8    # "requestIndex":I
    :catchall_38
    move-exception v0

    .line 974
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 973
    throw v0
.end method

.method public supportFinishAfterTransition()V
    .registers 1

    .prologue
    .line 226
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 225
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 676
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 677
    return-void

    .line 682
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 672
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .registers 1

    .prologue
    .line 259
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 258
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .registers 1

    .prologue
    .line 267
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 266
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .registers 3
    .param p1, "requestCode"    # I

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_a

    .line 884
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 885
    invoke-static {p1}, Landroid/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 875
    :cond_a
    return-void
.end method
