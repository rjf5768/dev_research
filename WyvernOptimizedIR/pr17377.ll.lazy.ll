; ModuleID = './pr17377.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr17377.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calls = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i8* @f(i32 noundef %0) #0 {
  %2 = load i32, i32* @calls, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @calls, align 4
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i8* @llvm.returnaddress(i32 0)
  br label %12

7:                                                ; preds = %1
  switch i32 %0, label %11 [
    i32 1, label %8
    i32 0, label %9
  ]

8:                                                ; preds = %7
  br label %12

9:                                                ; preds = %7
  %10 = call i8* @llvm.returnaddress(i32 0)
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %9, %8, %5
  %.0 = phi i8* [ %6, %5 ], [ null, %11 ], [ %10, %9 ], [ bitcast (i8* (i32)* @f to i8*), %8 ]
  ret i8* %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i8* @y(i32 noundef %0) #0 {
  store i32 0, i32* @x, align 4
  %2 = call i8* @f(i32 noundef %0)
  %3 = load i32, i32* @x, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @x, align 4
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds i8, i8* %2, i64 %5
  ret i8* %6
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i8* @y(i32 noundef 4)
  %2 = call i8* @y(i32 noundef 1)
  %.not = icmp eq i8* %2, bitcast (i8* (i32)* @f to i8*)
  br i1 %.not, label %3, label %11

3:                                                ; preds = %0
  %4 = call i8* @y(i32 noundef 0)
  %.not1 = icmp eq i8* %4, %1
  br i1 %.not1, label %5, label %11

5:                                                ; preds = %3
  %6 = call i8* @y(i32 noundef 3)
  %.not2 = icmp eq i8* %6, null
  br i1 %.not2, label %7, label %11

7:                                                ; preds = %5
  %8 = call i8* @y(i32 noundef -1)
  %.not3 = icmp eq i8* %8, null
  br i1 %.not3, label %9, label %11

9:                                                ; preds = %7
  %10 = load i32, i32* @calls, align 4
  %.not4 = icmp eq i32 %10, 5
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %9, %7, %5, %3, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %12, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
