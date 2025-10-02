; ModuleID = './20020418-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020418-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @gcc_crash(%struct.foo* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.foo, %struct.foo* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 52
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @llvm.trap()
  br label %6

6:                                                ; preds = %5, %1
  br label %7

7:                                                ; preds = %12, %6
  %8 = getelementptr inbounds %struct.foo, %struct.foo* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = icmp sgt i32 %9, 60
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %7

13:                                               ; preds = %7
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.foo, align 4
  %2 = getelementptr inbounds %struct.foo, %struct.foo* %1, i64 0, i32 0
  store i32 53, i32* %2, align 4
  call void @gcc_crash(%struct.foo* noundef nonnull %1)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
