; ModuleID = './20020107-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020107-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [10 x i8] zeroinitializer, align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i8* @foo(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @buf, i64 0, i64 0)) #4
  %2 = getelementptr inbounds i8, i8* %1, i64 -1
  %3 = ptrtoint i8* %2 to i64
  %4 = sub i64 %3, ptrtoint ([10 x i8]* @buf to i64)
  %5 = icmp eq i64 %4, 1
  %6 = zext i1 %5 to i32
  call void @bar(i32 noundef %6)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @bar(i32 noundef %0) #1 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  call void @abort() #5
  unreachable

3:                                                ; preds = %1
  ret void
}

declare dso_local i8* @foo(i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
