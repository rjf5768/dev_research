; ModuleID = './string-opt-17.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/string-opt-17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"foobarbaz\00", align 1
@check2.r = internal global i64 5, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"az\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"baz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test1(i8* noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, 1
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* @.str, i64 0, i64 %1
  %5 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %4) #5
  ret i64 %3
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @check2() #0 {
  %1 = load i64, i64* @check2.r, align 8
  %.not = icmp eq i64 %1, 5
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #6
  unreachable

3:                                                ; preds = %0
  %4 = load i64, i64* @check2.r, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* @check2.r, align 8
  ret i64 %5
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i8* noundef %0) #0 {
  %2 = call i64 @check2()
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* @.str, i64 0, i64 %2
  %4 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %3) #5
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca [10 x i8], align 1
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %3 = call i64 @test1(i8* noundef nonnull %2, i64 noundef 7)
  %.not = icmp eq i64 %3, 8
  br i1 %.not, label %4, label %6

4:                                                ; preds = %0
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %5, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 3)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @test2(i8* noundef nonnull %8)
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %bcmp2 = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %9, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 4)
  %.not3 = icmp eq i32 %bcmp2, 0
  br i1 %.not3, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #6
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  call void @exit(i32 noundef 0) #6
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10, %6
  unreachable
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
