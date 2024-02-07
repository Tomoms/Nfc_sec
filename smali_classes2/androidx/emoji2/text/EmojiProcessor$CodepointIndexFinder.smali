.class final Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodepointIndexFinder"
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 720
    move v0, p1

    .line 721
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 722
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 723
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 726
    :cond_0
    if-gez p2, :cond_1

    .line 727
    return v3

    .line 729
    :cond_1
    move v4, p2

    .line 731
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_2

    .line 732
    return v0

    .line 735
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 736
    if-gez v0, :cond_4

    .line 737
    if-eqz v1, :cond_3

    .line 738
    return v3

    .line 740
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 743
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 744
    .local v5, "c":C
    if-eqz v1, :cond_6

    .line 745
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 746
    return v3

    .line 748
    :cond_5
    const/4 v1, 0x0

    .line 749
    add-int/lit8 v4, v4, -0x1

    .line 750
    goto :goto_0

    .line 752
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 753
    add-int/lit8 v4, v4, -0x1

    .line 754
    goto :goto_0

    .line 756
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 757
    return v3

    .line 759
    :cond_8
    const/4 v1, 0x1

    .line 760
    .end local v5    # "c":C
    goto :goto_0

    .line 724
    .end local v4    # "remainingCodePoints":I
    :cond_9
    :goto_1
    return v3
.end method

.method static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 776
    move v0, p1

    .line 777
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 778
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 779
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 782
    :cond_0
    if-gez p2, :cond_1

    .line 783
    return v3

    .line 785
    :cond_1
    move v4, p2

    .line 788
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_2

    .line 789
    return v0

    .line 792
    :cond_2
    if-lt v0, v2, :cond_4

    .line 793
    if-eqz v1, :cond_3

    .line 794
    return v3

    .line 796
    :cond_3
    return v2

    .line 799
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 800
    .local v5, "c":C
    if-eqz v1, :cond_6

    .line 801
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 802
    return v3

    .line 804
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 805
    const/4 v1, 0x0

    .line 806
    add-int/lit8 v0, v0, 0x1

    .line 807
    goto :goto_0

    .line 809
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 810
    add-int/lit8 v4, v4, -0x1

    .line 811
    add-int/lit8 v0, v0, 0x1

    .line 812
    goto :goto_0

    .line 814
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 815
    return v3

    .line 817
    :cond_8
    const/4 v1, 0x1

    .line 818
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 819
    goto :goto_0

    .line 780
    .end local v4    # "remainingCodePoints":I
    :cond_9
    :goto_1
    return v3
.end method
