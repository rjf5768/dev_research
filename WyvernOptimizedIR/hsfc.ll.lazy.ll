; ModuleID = './hsfc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/hsfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hsfc2d.init = internal global i32 0, align 4
@hsfc2d.gray_inv = internal global [4 x i8] zeroinitializer, align 1
@hsfc3d.init = internal global i32 0, align 4
@hsfc3d.gray_inv = internal global [8 x i8] zeroinitializer, align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @hsfc2d(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef %2) #0 {
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = icmp ugt i32 %1, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %9

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i32 [ 2, %7 ], [ %1, %8 ]
  %11 = shl i32 %10, 4
  %12 = load i32, i32* @hsfc2d.init, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %13, label %48

13:                                               ; preds = %9
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %33, %13
  %.01 = phi i32 [ 1, %13 ], [ %34, %33 ]
  %16 = icmp ult i32 %.01, 4
  br i1 %16, label %17, label %35

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %30, %17
  %.0 = phi i32 [ 0, %17 ], [ %31, %30 ]
  %19 = icmp ult i32 %.0, %.01
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %.neg = xor i32 %.0, -1
  %21 = add i32 %.01, %.neg
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = trunc i32 %.01 to i8
  %26 = or i8 %24, %25
  %27 = add i32 %.01, %.0
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 %28
  store i8 %26, i8* %29, align 1
  br label %30

30:                                               ; preds = %20
  %31 = add i32 %.0, 1
  br label %18, !llvm.loop !4

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = shl i32 %.01, 1
  br label %15, !llvm.loop !6

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %45, %35
  %.1 = phi i32 [ 0, %35 ], [ %46, %45 ]
  %37 = icmp ult i32 %.1, 4
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = trunc i32 %.1 to i8
  %40 = zext i32 %.1 to i64
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* @hsfc2d.gray_inv, i64 0, i64 %43
  store i8 %39, i8* %44, align 1
  br label %45

45:                                               ; preds = %38
  %46 = add i32 %.1, 1
  br label %36, !llvm.loop !7

47:                                               ; preds = %36
  store i32 1, i32* @hsfc2d.init, align 4
  br label %48

48:                                               ; preds = %47, %9
  br label %49

49:                                               ; preds = %54, %48
  %.04 = phi i32 [ 0, %48 ], [ %55, %54 ]
  %50 = icmp ult i32 %.04, %10
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = zext i32 %.04 to i64
  %53 = getelementptr inbounds i32, i32* %2, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51
  %55 = add i32 %.04, 1
  br label %49, !llvm.loop !8

56:                                               ; preds = %49
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 1, i8* %58, align 1
  br label %59

59:                                               ; preds = %115, %56
  %.15 = phi i32 [ 1, %56 ], [ %116, %115 ]
  %.02 = phi i8 [ 0, %56 ], [ %.2, %115 ]
  %.not6 = icmp ugt i32 %.15, %11
  br i1 %.not6, label %117, label %60

60:                                               ; preds = %59
  %61 = sub i32 32, %.15
  %62 = zext i8 %.02 to i32
  %63 = load i32, i32* %0, align 4
  %64 = lshr i32 %63, %61
  %65 = and i32 %64, 1
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %65, %68
  %70 = getelementptr inbounds i32, i32* %0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = lshr i32 %71, %61
  %73 = and i32 %72, 1
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %73, %76
  %78 = or i32 %69, %77
  %79 = xor i32 %78, %62
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* @hsfc2d.gray_inv, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %.15, 1
  %85 = lshr i32 %84, 5
  %86 = and i32 %84, 30
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %60
  %89 = add nsw i32 %85, -1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %2, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %83
  store i32 %93, i32* %91, align 4
  br label %100

94:                                               ; preds = %60
  %narrow = sub nuw nsw i32 32, %86
  %95 = shl i32 %83, %narrow
  %96 = zext i32 %85 to i64
  %97 = getelementptr inbounds i32, i32* %2, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %88
  switch i8 %82, label %114 [
    i8 3, label %101
    i8 0, label %103
  ]

101:                                              ; preds = %100
  %102 = xor i8 %.02, 3
  br label %103

103:                                              ; preds = %101, %100
  %.13 = phi i8 [ %.02, %100 ], [ %102, %101 ]
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %105, i8* %106, align 1
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  store i8 %108, i8* %109, align 1
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 %108, i8* %110, align 1
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 %112, i8* %113, align 1
  br label %114

114:                                              ; preds = %103, %100
  %.2 = phi i8 [ %.02, %100 ], [ %.13, %103 ]
  br label %115

115:                                              ; preds = %114
  %116 = add i32 %.15, 1
  br label %59, !llvm.loop !9

117:                                              ; preds = %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsfc3d(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef %2) #1 {
  %4 = alloca [6 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = icmp ugt i32 %1, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %9

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i32 [ 3, %7 ], [ %1, %8 ]
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 5
  %13 = udiv i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @hsfc3d.init, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %16, label %51

16:                                               ; preds = %9
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %36, %16
  %.02 = phi i32 [ 1, %16 ], [ %37, %36 ]
  %19 = icmp ult i32 %.02, 8
  br i1 %19, label %20, label %38

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %33, %20
  %.01 = phi i32 [ 0, %20 ], [ %34, %33 ]
  %22 = icmp ult i32 %.01, %.02
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %.neg = xor i32 %.01, -1
  %24 = add i32 %.02, %.neg
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = trunc i32 %.02 to i8
  %29 = or i8 %27, %28
  %30 = add i32 %.02, %.01
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 %31
  store i8 %29, i8* %32, align 1
  br label %33

33:                                               ; preds = %23
  %34 = add i32 %.01, 1
  br label %21, !llvm.loop !10

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = shl i32 %.02, 1
  br label %18, !llvm.loop !11

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %48, %38
  %.1 = phi i32 [ 0, %38 ], [ %49, %48 ]
  %40 = icmp ult i32 %.1, 8
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = trunc i32 %.1 to i8
  %43 = zext i32 %.1 to i64
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* @hsfc3d.gray_inv, i64 0, i64 %46
  store i8 %42, i8* %47, align 1
  br label %48

48:                                               ; preds = %41
  %49 = add i32 %.1, 1
  br label %39, !llvm.loop !12

50:                                               ; preds = %39
  store i32 1, i32* @hsfc3d.init, align 4
  br label %51

51:                                               ; preds = %50, %9
  br label %52

52:                                               ; preds = %57, %51
  %.03 = phi i32 [ 0, %51 ], [ %58, %57 ]
  %53 = icmp ult i32 %.03, %10
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = zext i32 %.03 to i64
  %56 = getelementptr inbounds i32, i32* %2, i64 %55
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54
  %58 = add i32 %.03, 1
  br label %52, !llvm.loop !13

59:                                               ; preds = %52
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %60, align 1
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 2, i8* %61, align 1
  %62 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 4, i8* %62, align 1
  br label %63

63:                                               ; preds = %236, %59
  %.14 = phi i32 [ 1, %59 ], [ %237, %236 ]
  %.not5 = icmp ugt i32 %.14, %14
  br i1 %.not5, label %238, label %64

64:                                               ; preds = %63
  %65 = sub i32 32, %.14
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = lshr i8 %67, 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i32, i32* %0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = lshr i32 %71, %65
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = xor i32 %72, %75
  %77 = and i32 %76, 1
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = lshr i8 %79, 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i32, i32* %0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = lshr i32 %83, %65
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = xor i32 %84, %87
  %89 = shl i32 %88, 1
  %90 = and i32 %89, 2
  %91 = or i32 %77, %90
  %92 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = lshr i8 %93, 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds i32, i32* %0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = lshr i32 %97, %65
  %99 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = xor i32 %98, %101
  %103 = shl i32 %102, 2
  %104 = and i32 %103, 4
  %105 = or i32 %91, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* @hsfc3d.gray_inv, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  br label %110

110:                                              ; preds = %134, %64
  %.0 = phi i32 [ 0, %64 ], [ %135, %134 ]
  %111 = icmp ult i32 %.0, 3
  br i1 %111, label %112, label %136

112:                                              ; preds = %110
  %113 = sub i32 2, %.0
  %114 = lshr i32 %109, %113
  %115 = and i32 %114, 1
  %116 = mul i32 %.14, 3
  %117 = add i32 %116, %.0
  %118 = lshr i32 %117, 5
  %119 = and i32 %117, 31
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = add nsw i32 %118, -1
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %2, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %115
  store i32 %126, i32* %124, align 4
  br label %133

127:                                              ; preds = %112
  %narrow = sub nuw nsw i32 32, %119
  %128 = shl i32 %115, %narrow
  %129 = zext i32 %118 to i64
  %130 = getelementptr inbounds i32, i32* %2, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %121
  br label %134

134:                                              ; preds = %133
  %135 = add i32 %.0, 1
  br label %110, !llvm.loop !14

136:                                              ; preds = %110
  %137 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  store i8 %138, i8* %139, align 1
  %140 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  store i8 %141, i8* %142, align 1
  %143 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  store i8 %144, i8* %145, align 1
  switch i8 %108, label %234 [
    i8 0, label %146
    i8 1, label %156
    i8 2, label %166
    i8 3, label %176
    i8 4, label %188
    i8 5, label %200
    i8 6, label %210
    i8 7, label %222
  ]

146:                                              ; preds = %136
  %147 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %148 = load i8, i8* %147, align 1
  %149 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %148, i8* %149, align 1
  %150 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %151 = load i8, i8* %150, align 1
  %152 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %151, i8* %152, align 1
  %153 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %154 = load i8, i8* %153, align 1
  %155 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %154, i8* %155, align 1
  br label %235

156:                                              ; preds = %136
  %157 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %158 = load i8, i8* %157, align 1
  %159 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %158, i8* %159, align 1
  %160 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %161 = load i8, i8* %160, align 1
  %162 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %161, i8* %162, align 1
  %163 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %164 = load i8, i8* %163, align 1
  %165 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %164, i8* %165, align 1
  br label %235

166:                                              ; preds = %136
  %167 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %168 = load i8, i8* %167, align 1
  %169 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %168, i8* %169, align 1
  %170 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %171 = load i8, i8* %170, align 1
  %172 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %171, i8* %172, align 1
  %173 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %174 = load i8, i8* %173, align 1
  %175 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %174, i8* %175, align 1
  br label %235

176:                                              ; preds = %136
  %177 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %178 = load i8, i8* %177, align 1
  %179 = xor i8 %178, 1
  %180 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %179, i8* %180, align 1
  %181 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = xor i8 %182, 1
  %184 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %183, i8* %184, align 1
  %185 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %186 = load i8, i8* %185, align 1
  %187 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %186, i8* %187, align 1
  br label %235

188:                                              ; preds = %136
  %189 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %190 = load i8, i8* %189, align 1
  %191 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %190, i8* %191, align 1
  %192 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %193 = load i8, i8* %192, align 1
  %194 = xor i8 %193, 1
  %195 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %194, i8* %195, align 1
  %196 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %197 = load i8, i8* %196, align 1
  %198 = xor i8 %197, 1
  %199 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %198, i8* %199, align 1
  br label %235

200:                                              ; preds = %136
  %201 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %202 = load i8, i8* %201, align 1
  %203 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %202, i8* %203, align 1
  %204 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %205 = load i8, i8* %204, align 1
  %206 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %205, i8* %206, align 1
  %207 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %208 = load i8, i8* %207, align 1
  %209 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %208, i8* %209, align 1
  br label %235

210:                                              ; preds = %136
  %211 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %212 = load i8, i8* %211, align 1
  %213 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %212, i8* %213, align 1
  %214 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %215 = load i8, i8* %214, align 1
  %216 = xor i8 %215, 1
  %217 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %216, i8* %217, align 1
  %218 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %219 = load i8, i8* %218, align 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %220, i8* %221, align 1
  br label %235

222:                                              ; preds = %136
  %223 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %224 = load i8, i8* %223, align 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %225, i8* %226, align 1
  %227 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %228 = load i8, i8* %227, align 1
  %229 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %228, i8* %229, align 1
  %230 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %231 = load i8, i8* %230, align 1
  %232 = xor i8 %231, 1
  %233 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %232, i8* %233, align 1
  br label %235

234:                                              ; preds = %136
  call void @exit(i32 noundef -1) #3
  unreachable

235:                                              ; preds = %222, %210, %200, %188, %176, %166, %156, %146
  br label %236

236:                                              ; preds = %235
  %237 = add i32 %.14, 1
  br label %63, !llvm.loop !15

238:                                              ; preds = %63
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fhsfc2d(double* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef %2) #0 {
  %4 = alloca [2 x i32], align 4
  %5 = load double, double* %0, align 8
  %6 = fmul double %5, 0x41EFFFFFFFE00000
  %7 = fptoui double %6 to i32
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds double, double* %0, i64 1
  %10 = load double, double* %9, align 8
  %11 = fmul double %10, 0x41EFFFFFFFE00000
  %12 = fptoui double %11 to i32
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  call void @hsfc2d(i32* noundef nonnull %14, i32 noundef %1, i32* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fhsfc3d(double* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef %2) #1 {
  %4 = alloca [3 x i32], align 4
  %5 = load double, double* %0, align 8
  %6 = fmul double %5, 0x41EFFFFFFFE00000
  %7 = fptoui double %6 to i32
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds double, double* %0, i64 1
  %10 = load double, double* %9, align 8
  %11 = fmul double %10, 0x41EFFFFFFFE00000
  %12 = fptoui double %11 to i32
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds double, double* %0, i64 2
  %15 = load double, double* %14, align 8
  %16 = fmul double %15, 0x41EFFFFFFFE00000
  %17 = fptoui double %16 to i32
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  call void @hsfc3d(i32* noundef nonnull %19, i32 noundef %1, i32* noundef %2)
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
