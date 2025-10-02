; ModuleID = './991201-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, [48 x i8] }
%struct.vc = type { %struct.vc_data* }

@a_con = dso_local global %struct.vc_data zeroinitializer, align 8
@vc_cons = dso_local global <{ %struct.vc, [62 x %struct.vc] }> <{ %struct.vc { %struct.vc_data* @a_con }, [62 x %struct.vc] zeroinitializer }>, align 16
@default_red = dso_local global [16 x i32] zeroinitializer, align 16
@default_grn = dso_local global [16 x i32] zeroinitializer, align 16
@default_blu = dso_local global [16 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset_palette(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %34, %1
  %.01 = phi i32 [ 0, %1 ], [ %36, %34 ]
  %.0 = phi i32 [ 0, %1 ], [ %35, %34 ]
  %3 = icmp ult i32 %.01, 16
  br i1 %3, label %4, label %37

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* @default_red, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [63 x %struct.vc], [63 x %struct.vc]* bitcast (<{ %struct.vc, [62 x %struct.vc] }>* @vc_cons to [63 x %struct.vc]*), i64 0, i64 %9, i32 0
  %11 = load %struct.vc_data*, %struct.vc_data** %10, align 8
  %12 = add nuw nsw i32 %.0, 1
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i64 0, i32 1, i64 %13
  store i8 %8, i8* %14, align 1
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* @default_grn, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = trunc i32 %17 to i8
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [63 x %struct.vc], [63 x %struct.vc]* bitcast (<{ %struct.vc, [62 x %struct.vc] }>* @vc_cons to [63 x %struct.vc]*), i64 0, i64 %19, i32 0
  %21 = load %struct.vc_data*, %struct.vc_data** %20, align 8
  %22 = add nuw nsw i32 %.0, 2
  %23 = zext i32 %12 to i64
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i64 0, i32 1, i64 %23
  store i8 %18, i8* %24, align 1
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* @default_blu, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = trunc i32 %27 to i8
  %29 = sext i32 %0 to i64
  %30 = getelementptr inbounds [63 x %struct.vc], [63 x %struct.vc]* bitcast (<{ %struct.vc, [62 x %struct.vc] }>* @vc_cons to [63 x %struct.vc]*), i64 0, i64 %29, i32 0
  %31 = load %struct.vc_data*, %struct.vc_data** %30, align 8
  %32 = zext i32 %22 to i64
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i64 0, i32 1, i64 %32
  store i8 %28, i8* %33, align 1
  br label %34

34:                                               ; preds = %4
  %35 = add nuw nsw i32 %.0, 3
  %36 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

37:                                               ; preds = %2
  call void @bar(i32 noundef %.0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 48
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #3
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @reset_palette(i32 noundef 0)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
