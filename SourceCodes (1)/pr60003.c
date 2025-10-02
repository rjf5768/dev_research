; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60003.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60003.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jmp_buf = dso_local global [5 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz() #0 {
  call void @llvm.eh.sjlj.longjmp(i8* bitcast ([5 x i64]* @jmp_buf to i8*))
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  call void @baz()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %5, i8** bitcast ([5 x i64]* @jmp_buf to i8**), align 16
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** getelementptr inbounds (i8*, i8** bitcast ([5 x i64]* @jmp_buf to i8**), i64 2), align 16
  %7 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([5 x i64]* @jmp_buf to i8*))
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %10
  store i32 1, i32* %4, align 4
  call void @bar()
  br label %10

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %14
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i32 noundef 1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #6
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
