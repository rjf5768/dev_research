; ModuleID = './pr61673.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr61673.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i8 0, align 1
@__const.main.c = private unnamed_addr constant [2 x i8] c"T\87", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8 noundef signext %0) #0 {
  %.not = icmp eq i8 %0, 84
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %.not1 = icmp eq i8 %0, -121
  br i1 %.not1, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #4
  unreachable

4:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  br i1 %3, label %7, label %6

6:                                                ; preds = %5
  store i8 %2, i8* @e, align 1
  br label %7

7:                                                ; preds = %6, %5
  call void @bar(i8 noundef signext %2)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @baz(i8* nocapture noundef readonly %0) #2 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  br i1 %3, label %7, label %6

6:                                                ; preds = %5
  store i8 %2, i8* @e, align 1
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i16, align 2
  store i16 -30892, i16* %1, align 2
  store i8 33, i8* @e, align 1
  %2 = bitcast i16* %1 to i8*
  call void @foo(i8* noundef nonnull %2)
  %3 = load i8, i8* @e, align 1
  %.not = icmp eq i8 %3, 33
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  %6 = bitcast i16* %1 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  call void @foo(i8* noundef nonnull %7)
  %8 = load i8, i8* @e, align 1
  %.not1 = icmp eq i8 %8, -121
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  store i8 33, i8* @e, align 1
  %11 = bitcast i16* %1 to i8*
  call void @baz(i8* noundef nonnull %11)
  %12 = load i8, i8* @e, align 1
  %.not2 = icmp eq i8 %12, 33
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #4
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  %15 = bitcast i16* %1 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  call void @baz(i8* noundef nonnull %16)
  %17 = load i8, i8* @e, align 1
  %.not3 = icmp eq i8 %17, -121
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %14
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %18, %13, %9, %4
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
