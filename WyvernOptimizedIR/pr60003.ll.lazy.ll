; ModuleID = './pr60003.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60003.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jmp_buf = dso_local global [5 x i64] zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @baz() #0 {
  call void @llvm.eh.sjlj.longjmp(i8* bitcast ([5 x i64]* @jmp_buf to i8*))
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @bar() #0 {
  call void @baz()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #2 {
  %2 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %2, i8** bitcast ([5 x i64]* @jmp_buf to i8**), align 16
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** bitcast (i64* getelementptr inbounds ([5 x i64], [5 x i64]* @jmp_buf, i64 0, i64 2) to i8**), align 16
  %4 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([5 x i64]* @jmp_buf to i8*))
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %7, %6
  call void @bar()
  br label %7

8:                                                ; preds = %1
  br i1 true, label %9, label %10

9:                                                ; preds = %8
  br label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %9
  %.0 = phi i32 [ 0, %9 ], [ %0, %10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @foo(i32 noundef 1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #1
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #6

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
