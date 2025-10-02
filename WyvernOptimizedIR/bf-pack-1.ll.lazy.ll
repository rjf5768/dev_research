; ModuleID = './bf-pack-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-pack-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i48 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.foo* nocapture noundef readonly %0) #0 {
  %2 = bitcast %struct.foo* %0 to i64*
  %3 = load i64, i64* %2, align 4
  %4 = and i64 %3, 65535
  %.not = icmp eq i64 %4, 4660
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %1
  %7 = bitcast %struct.foo* %0 to i64*
  %8 = load i64, i64* %7, align 4
  %9 = and i64 %8, 281474976645120
  %.not1 = icmp eq i64 %9, 95075992076288
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %10, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.foo, align 8
  %2 = bitcast %struct.foo* %1 to i64*
  %3 = load i64, i64* %2, align 8
  %4 = bitcast %struct.foo* %1 to i64*
  %5 = and i64 %3, -281474976710656
  %6 = or i64 %5, 95075992080948
  store i64 %6, i64* %4, align 8
  %7 = call i32 @f(%struct.foo* noundef nonnull %1)
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
