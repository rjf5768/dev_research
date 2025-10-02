; ModuleID = './20071018-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071018-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i8* }
%struct.mem = type { [4 x %struct.foo*] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.foo** nocapture noundef writeonly %0) #0 {
  %2 = call dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %3 = bitcast %struct.foo** %0 to i8**
  store i8* %2, i8** %3, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.foo* @foo(i32 noundef %0) #0 {
  %2 = call dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %3 = bitcast i8* %2 to %struct.mem*
  %4 = shl nsw i32 %0, 3
  %5 = add nsw i32 %4, -5
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.mem, %struct.mem* %3, i64 0, i32 0, i64 %6
  store %struct.foo* null, %struct.foo** %7, align 8
  call void @bar(%struct.foo** noundef nonnull %7)
  %8 = load %struct.foo*, %struct.foo** %7, align 8
  ret %struct.foo* %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call %struct.foo* @foo(i32 noundef 1)
  %2 = icmp eq %struct.foo* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
