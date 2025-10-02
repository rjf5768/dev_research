; ModuleID = './bswap-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bswap-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @g(i64 noundef %0) #0 {
  %2 = call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f(i64 noundef %0) #2 {
  %2 = alloca %union.anon, align 8
  %3 = alloca %union.anon, align 8
  %4 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = bitcast %union.anon* %2 to [8 x i8]*
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 7
  %7 = load i8, i8* %6, align 1
  %8 = bitcast %union.anon* %3 to i8*
  store i8 %7, i8* %8, align 8
  %9 = bitcast %union.anon* %2 to [8 x i8]*
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 6
  %11 = load i8, i8* %10, align 2
  %12 = bitcast %union.anon* %3 to [8 x i8]*
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  store i8 %11, i8* %13, align 1
  %14 = bitcast %union.anon* %2 to [8 x i8]*
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 5
  %16 = load i8, i8* %15, align 1
  %17 = bitcast %union.anon* %3 to [8 x i8]*
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 2
  store i8 %16, i8* %18, align 2
  %19 = bitcast %union.anon* %2 to [8 x i8]*
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 4
  %21 = load i8, i8* %20, align 4
  %22 = bitcast %union.anon* %3 to [8 x i8]*
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 3
  store i8 %21, i8* %23, align 1
  %24 = bitcast %union.anon* %2 to [8 x i8]*
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = bitcast %union.anon* %3 to [8 x i8]*
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 4
  store i8 %26, i8* %28, align 4
  %29 = bitcast %union.anon* %2 to [8 x i8]*
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 2
  %31 = load i8, i8* %30, align 2
  %32 = bitcast %union.anon* %3 to [8 x i8]*
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %32, i64 0, i64 5
  store i8 %31, i8* %33, align 1
  %34 = bitcast %union.anon* %2 to [8 x i8]*
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %34, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = bitcast %union.anon* %3 to [8 x i8]*
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 6
  store i8 %36, i8* %38, align 2
  %39 = bitcast %union.anon* %2 to i8*
  %40 = load i8, i8* %39, align 8
  %41 = bitcast %union.anon* %3 to [8 x i8]*
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %41, i64 0, i64 7
  store i8 %40, i8* %42, align 1
  %43 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %44 = load i64, i64* %43, align 8
  ret i64 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i64 @f(i64 noundef 18)
  %2 = call i64 @g(i64 noundef 18)
  %.not = icmp eq i64 %1, %2
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i64 @f(i64 noundef 4660)
  %6 = call i64 @g(i64 noundef 4660)
  %.not1 = icmp eq i64 %5, %6
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = call i64 @f(i64 noundef 1193046)
  %10 = call i64 @g(i64 noundef 1193046)
  %.not2 = icmp eq i64 %9, %10
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = call i64 @f(i64 noundef 305419896)
  %14 = call i64 @g(i64 noundef 305419896)
  %.not3 = icmp eq i64 %13, %14
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = call i64 @f(i64 noundef 78187493520)
  %18 = call i64 @g(i64 noundef 78187493520)
  %.not4 = icmp eq i64 %17, %18
  br i1 %.not4, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = call i64 @f(i64 noundef 20015998341138)
  %22 = call i64 @g(i64 noundef 20015998341138)
  %.not5 = icmp eq i64 %21, %22
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = call i64 @f(i64 noundef 5124095575331380)
  %26 = call i64 @g(i64 noundef 5124095575331380)
  %.not6 = icmp eq i64 %25, %26
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = call i64 @f(i64 noundef 1311768467284833366)
  %30 = call i64 @g(i64 noundef 1311768467284833366)
  %.not7 = icmp eq i64 %29, %30
  br i1 %.not7, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #5
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %31, %27, %23, %19, %15, %11, %7, %3
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
